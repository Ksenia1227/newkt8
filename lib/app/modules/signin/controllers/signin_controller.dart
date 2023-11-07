import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newkt8/app/data/services/api_service.dart';
import 'package:newkt8/app/data/services/auth_service.dart';
import 'package:newkt8/app/routes/app_pages.dart';

class SigninController extends GetxController {
  ApiService apiService = Get.find();
  AuthService authService = Get.find();

  var mailController = TextEditingController();
  var passController = TextEditingController();

  signIn() async {
    bool res =
        await authService.login(mailController.text, passController.text);
    if (res) {
      authService.isAuth = true;
      Get.toNamed(Routes.HOME);
      print('Registration is successfull');
    } else {
      print('Registration failed');
    }
  }

  toSignUp() {
    void toRegistration() => Get.toNamed(Routes.SIGNUP);
  }
}
