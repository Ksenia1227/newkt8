import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:newkt8/app/data/services/auth_service.dart';
import 'package:newkt8/app/routes/app_pages.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    AuthService authService=Get.find();
    print('redict');
    return super.redirect(route);
  }

}