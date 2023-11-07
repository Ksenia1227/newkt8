import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
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

    Future<bool> refresh() async {
      try{
    var res = await client.post(ApiEndpoints.refresh, data:_tokens.toJson());
    var tokens= JWTModel.fromJson(res.data);
    updateTokens(tokens);
    if(res.statusCode==200) return true;
      }catch(e){
        print(e);
      }
      return false;
    }

  Future<bool> login (String mail,String password) async => _auth(mail,password,ApiEndpoints.login);
  Future<bool> registration(String mail,String password) async => _auth (mail,password, ApiEndpoints.registration);

    Future<bool> _auth(String mail,String password,String path) async{
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

  void updateTokens(JWTModel tokens){
  _tokens=tokens;
  storageService.writeRefreshToken(tokens.refreshToken);
 }

  Future<void> tryAuth() async {

    String refreshToken = storageService.getRefreshToken();
    print(refreshToken);
    var tokens=JWTModel(accessToken: null, refreshToken: refreshToken);
    updateTokens(tokens);
    print(_tokens);
    if (_tokens.refreshToken.isEmpty) {
      isAuth = false;
    }
    else {
      bool refreshResult = await apiService.updateTokens();
      print(refreshResult);
      isAuth = refreshResult;
    }
    
  }

  Future<AuthService> init() async {
   await tryAuth();
    return this;
  }

}