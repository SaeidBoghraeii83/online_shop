import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/apiExeption/apiExeption.dart';
import 'package:online_shop/data/dataSorce/banner_dataSource.dart';
import 'package:online_shop/data/di/di.dart';
import 'package:online_shop/model/banner_Model.dart';

abstract class IBannerRepository {
  Future<Either<String, List<BannerModel>>> getBanner();
}

class BannerRepository extends IBannerRepository {
  final IBannerDatasource _datasource = locator.get();
  @override
  Future<Either<String, List<BannerModel>>> getBanner() async {
    try {
      var response = await _datasource.getBanner();
      return right(response);
    } on DioError catch (ex) {
      return left(throw ApiException(ex.response!.statusCode, ex.message));
    }
  }
}
