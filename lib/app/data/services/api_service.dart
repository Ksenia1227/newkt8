import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:newkt8/core/constants.dart';

class ApiService extends GetxService {

  Dio client = Dio(BaseOptions(
    baseUrl: Constants.baseUrl));

  Future<bool> updateTokens() async {
    return false;
  }

  Future<ApiService> init() async {
    return this;
  }
}