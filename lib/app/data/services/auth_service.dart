import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:newkt8/app/data/models/jwtTokens/jwt.dart';
import 'package:newkt8/app/data/services/api_service.dart';
import 'package:newkt8/app/data/services/storage_service.dart';
import 'package:newkt8/core/constants.dart';

class AuthService extends GetxService {

  StorageService storageService = Get.find();
  ApiService apiService = Get.find();
  late JWTModel _tokens;

  Dio client = Dio(BaseOptions(
    baseUrl: Constants.baseUrl,));

    Future<bool> auth(String mail,String password,String path) async{
      try{
        var response =await client.post(path, data:{
          "email":mail,
        "password":password,
        } );
        var tokens =JWTModel.fromJson(response.data);
        updateTokens(tokens
      );
      if(response.statusCode==200) return true;      
    } catch (e) {
      print(e);
      }
      return false;
    }
   bool isAuth = false;
  Future<bool> registration(String mail, String password) async {
    try {
      var response =await client.post(ApiEndpoints.registration,data: {
        "email":mail,
        "password":password,
      });
      var tokens =JWTModel.fromJson(response.data);
      updateTokens(tokens
      );
      print(tokens);
      if(response.statusCode==200) return true;      
    } catch (e) {
      print(e);
    }
    return false;
  }

  void updateTokens(JWTModel tokens){
  _tokens=tokens;
  storageService.writeRefreshToken(tokens.refreshToken);
 }

  Future<void> tryAuth() async {

    String refreshToken = storageService.getRefreshToken();
    print(refreshToken);
    _tokens=JWTModel(accessToken: null, refreshToken: refreshToken);
    if (_tokens.refreshToken.isEmpty) {
      isAuth = false;
    }
    else {
      bool refreshResult = await apiService.updateTokens();
      isAuth = refreshResult;
    }
    
  }

  Future<AuthService> init() async {
   await tryAuth();
    return this;
  }

}