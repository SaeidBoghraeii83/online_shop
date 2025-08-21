import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop/bloc/category/category_bloc.dart';
import 'package:online_shop/bloc/category/category_event.dart';
import 'package:online_shop/bloc/category/category_state.dart';
import 'package:online_shop/data/repository/category_repository.dart';
import 'package:online_shop/model/categoryModel.dart';
import 'package:online_shop/widget/cashed_Image.dart';

class Category_Screen extends StatefulWidget {
  const Category_Screen({super.key});

  @override
  State<Category_Screen> createState() => _Category_ScreenState();
}

class _Category_ScreenState extends State<Category_Screen> {
  @override
  void initState() {
    // ریکوست زدن در وضعیت آغازین برنامه با استفاده از بلاک پروایدر
    BlocProvider.of<CategoryBloc>(context).add(CategoryRequestList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: _gettingAppbarCategory(),
              ),
            ),
            BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                if (state is CategoryLoadingState) {
                  return SliverToBoxAdapter(child: CircularProgressIndicator());
                }
                if (state is CategoryResponseState) {
                  return state.response.fold(
                    (errorMessage) {
                      return SliverToBoxAdapter(child: Text(errorMessage));
                    },
                    (responseData) {
                      return SliverToBoxAdapter(
                        child: _listCategory(list: responseData),
                      );
                    },
                  );
                }
                return SliverToBoxAdapter(child: Text('error'));
              },
            ),
          ],
        ),
      ),
    );
  }

  // appBarCategory
  Widget _gettingAppbarCategory() {
    return Container(
      height: 46,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            'دسته بندی',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff3B5EDF),
              fontSize: 16,
              fontFamily: 'SM',
              fontWeight: FontWeight.w700,
            ),
          ),
          Positioned(
            left: 20,
            child: Image.asset('images/icon_apple_blue.png'),
          ),
        ],
      ),
    );
  }
}

class _listCategory extends StatelessWidget {
  List<CategoryModel>? list;
  _listCategory({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 25, vertical: 10),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 17,
          childAspectRatio: 1,
          crossAxisSpacing: 12,
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          return ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: CashedImage(imageUrl: list?[index].thumbnail ?? 'test'),
          );
        }, childCount: list?.length),
      ),
    );
  }
}
