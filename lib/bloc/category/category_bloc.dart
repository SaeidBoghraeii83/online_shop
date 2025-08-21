import 'package:bloc/bloc.dart';
import 'package:online_shop/bloc/category/category_event.dart';
import 'package:online_shop/bloc/category/category_state.dart';
import 'package:online_shop/data/di/di.dart';

import 'package:online_shop/data/repository/category_repository.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final ICategoryRepository _repository = locator.get();
  // گرفتن دیتا از ریپازیتوری
  CategoryBloc() : super(CategoryInitState()) {
    // هندل ریکوست زدن به لیست کتگوری
    on<CategoryRequestList>((event, emit) async {
      // حین اومدن دیتا از سرور جایگذاری لودینگ
      emit(CategoryLoadingState());

      var respone = await _repository.getCategoryData(); // گرفتن دیتا
      emit(CategoryResponseState(respone));
      // جایگذاری دیتا روی نتیجه پاسخ دسته بندی
    });
  }
}
