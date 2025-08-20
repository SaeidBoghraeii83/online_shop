import 'package:dio/dio.dart';
import 'package:online_shop/apiExeption/apiExeption.dart';
import 'package:online_shop/data/di/di.dart';
import 'package:online_shop/model/categoryModel.dart';

abstract class ICategoryDataSource {
  Future<List<CategoryModel>> getCategoryData();
}

class CategoryRemoteDataSource extends ICategoryDataSource {
  final Dio _dio = locator.get(); // ادرس یو آرال اصلی
  @override
  Future<List<CategoryModel>> getCategoryData() async {
    try {
      var response = await _dio.get(
        'collections/category/records',
      ); // گرفتن دیتا از این دسته بندی کالکشن ها
      return response.data['items']
          .map<CategoryModel>(
            (jsonObject) => CategoryModel.fromMapJson(jsonObject),
          )
          .toList();
    } on DioError catch (ex) {
      throw ApiException(ex.response!.statusCode, ex.message);
    } catch (ex) {
      throw ApiException(0, 'خطا نامشخص');
    }
  }
}
