import 'package:assessment_test_option_two/data/models/store_model.dart';
import 'package:assessment_test_option_two/shared/network/remote/dio_helper.dart';
import '../../shared/network/end_points.dart';

class StoreDetailsApi {
  Future<dynamic> getStoreDetails({
    required int storeId,
    required double latitude,
    required double longitude,
  }) async {
    try {
      var response = await DioHelper.getData(
          url: '$storeDetailsEndPoint/$storeId',
          query: {
            'latitude': latitude,
            'longitude': longitude,
          });
      print(response!.data);
      return response.data;
    } catch (e) {
      print('ahmed hegab: ${e.toString()}');
      return StoreModel(ack: 0);
    }
  }
}
