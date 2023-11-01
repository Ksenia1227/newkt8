import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:newkt8/app/data/models/jwtTokens/jwt.dart';
import 'package:newkt8/app/data/services/api_service.dart';
import 'package:newkt8/app/data/services/storage_service.dart';
import 'package:newkt8/core/constants.dart';

class AuthService extends GetxService {

  StorageService storageService = Get.find();
  ApiService apiService = Get.find();

  Dio client = Dio(BaseOptions(
    baseUrl: Constants.baseUrl));
  
  Future<void> registration(String mail, String password) async {
    var response = await client.post(ApiEndpoints.registration);
    var tokens = JWTModel.fromJson(response.data);
    return;
  }

  bool isAuth = false;

  Future<void> tryAuth() async {
    var refresh = storageService.getRefresh();
    if (refresh == null) {
      isAuth = false;
    }
    else {
      bool refreshResult = await apiService.updateTokens();
      isAuth = refreshResult;
    }
    await Future.delayed(const Duration(seconds: 1));
  }

  Future<AuthService> init() async {
   await tryAuth();
    return this;
  }

}