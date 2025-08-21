import 'package:dartz/dartz.dart';
import 'package:online_shop/model/categoryModel.dart';

class CategoryState {}

class CategoryInitState extends CategoryState {
  // وضعیت اغازین
}

class CategoryResponseState extends CategoryState {
  // وضعیت گرفتن نتیجه لیست دسته بندی ها
  Either<String, List<CategoryModel>> response;
  CategoryResponseState(this.response);
}

class CategoryLoadingState extends CategoryState {
  // اضافه کردن لودینگ قبل از اومدن دیتا
}
