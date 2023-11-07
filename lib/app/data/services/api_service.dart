import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:newkt8/app/data/services/storage_service.dart';
import 'package:newkt8/app/routes/app_pages.dart';
import 'package:newkt8/core/constants.dart';

class ApiService extends GetxService {
  StorageService storageService=Get.find();

  Dio client = Dio(BaseOptions(
    baseUrl: Constants.baseUrl));

  Future<bool> updateTokens() async {
    return false;
  }
  void logout (){
    storageService.clear();
    Get.offNamed(Routes.SIGNIN);
  }

  Future<ApiService> init() async {
    return this;
  }
}