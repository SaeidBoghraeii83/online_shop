import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:online_shop/apiExeption/apiExeption.dart';
import 'package:online_shop/data/dataSorce/category_dataSource.dart';
import 'package:online_shop/data/di/di.dart';
import 'package:online_shop/model/categoryModel.dart';

abstract class ICategoryRepository {
  Future<Either<String, List<CategoryModel>>> getCategoryData();
}

class CategoryRepository extends ICategoryRepository {
  final ICategoryDataSource _dataSource = locator.get();
  @override
  Future<Either<String, List<CategoryModel>>> getCategoryData() async {
    try {
      var response = await _dataSource.getCategoryData();
      return right(response);
    } on DioError catch (ex) {
      return left(throw ApiException(ex.response!.statusCode, ex.message));
    } catch (ex) {
      return left('خطا در ارتباط با سرور');
    }
  }
}
