import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:online_shop/data/dataSorce/banner_dataSource.dart';
import 'package:online_shop/data/dataSorce/category_dataSource.dart';
import 'package:online_shop/data/repository/category_repository.dart';

var locator = GetIt.instance;

Future<void> getItInit() async {
  locator.registerSingleton<Dio>(
    Dio(BaseOptions(baseUrl: 'http://startflutter.ir/api/')),
  ); // ریکوست بزن به این );

  locator.registerFactory<ICategoryDataSource>(
    () => CategoryRemoteDataSource(),
  );
  locator.registerFactory<ICategoryRepository>(() => CategoryRepository());

  locator.registerFactory<IBannerDatasource>(() => BannerDataSource());
}
