import 'package:dio/dio.dart';
import 'package:online_shop/apiExeption/apiExeption.dart';
import 'package:online_shop/data/di/di.dart';
import 'package:online_shop/model/banner_Model.dart';

abstract class IBannerDatasource {
  Future<List<BannerModel>> getBanner();
}

class BannerDataSource extends IBannerDatasource {
  // زدن ریکوست برای گرفتن مقادیر بنر از سرور
  final Dio _dio = locator.get();
  @override
  Future<List<BannerModel>> getBanner() async {
    try {
      var response = await _dio.get('collections/banner/records');
      return response.data['items']
          .map<BannerModel>((jsonObject) => BannerModel.fromMapJson(jsonObject))
          .toList();
    } on DioError catch (ex) {
      throw ApiException(ex.response!.statusCode, ex.message);
    } catch (ex) {
      throw ApiException(0, 'خطا نامشخص');
    }
  }
}
