import 'package:assessment_test_option_two/data/models/store_model.dart';

import '../web_services/store_details_api.dart';

class StoreDetailsRepository {
  final StoreDetailsApi storeDetailsApi;

  StoreDetailsRepository(this.storeDetailsApi);

  Future<StoreModel> getStoreDetails({
    required int storeId,
    required double latitude,
    required double longitude,
  }) async {
    final storeDetails = await storeDetailsApi.getStoreDetails(
      storeId: storeId,
      latitude: latitude,
      longitude: longitude,
    );

    print("its my dataaaaaaaaaaaaaa: $storeDetails");

    return StoreModel.fromJson(storeDetails);
  }
}
