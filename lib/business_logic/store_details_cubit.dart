import 'package:assessment_test_option_two/business_logic/store_details_state.dart';
import 'package:assessment_test_option_two/data/models/store_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repository/store_details_repository.dart';


class StoreDetailsCubit extends Cubit<StoreDetailsState> {
  StoreDetailsCubit(this.storeDetailsRepository) : super(StoreDetailsInitial());

  static StoreDetailsCubit get(context) => BlocProvider.of(context);

  final StoreDetailsRepository storeDetailsRepository;

  StoreModel? storeModel;

  Future<StoreModel?> getStoreDetails({
    required int storeId,
    required double latitude,
    required double longitude,
  }) async {
    emit(GetStoreDetailsLoading());
    await storeDetailsRepository
        .getStoreDetails(
      storeId: storeId,
      latitude: latitude,
      longitude: longitude,
    )
        .then((storeDetails) {
      if (storeDetails.ack == 0) {
        emit(GetStoreDetailsError('Something went wrong!'));
      } else {
        storeModel = storeDetails;
        emit(GetStoreDetailsSuccess());
      }
    }).catchError((error) {
      print(error.toString());
      emit(GetStoreDetailsError(error.toString()));
    });
    return storeModel;
  }

  int currentIndex = 0;

  changeCurrentIndex(int index) {
    currentIndex = index;
    emit(ChangeIndexState());
  }
}
