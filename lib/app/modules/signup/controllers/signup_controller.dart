import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newkt8/app/data/services/auth_service.dart';
import 'package:newkt8/app/routes/app_pages.dart';
// import 'package:newkt8/core/constants.dart';

class SignupController extends GetxController {
  AuthService authService = Get.find();
  var mailController = TextEditingController();
  var passController = TextEditingController();
  var passRepController = TextEditingController();

  void signUp() async {
    if (!mailController.text.contains("@")) {
      showSnack("Неправильно указанная почта");
      return;
    }
    if (passRepController.text.length < 8) {
      showSnack("Длина пароля должна быть более 8 символов");
      return;
    }
    if (passController.text != passRepController.text) {
      showSnack("Пароли не совпадают!");
      return;
    }

    bool res = await authService.registration(
        mailController.text, passController.text);
    if (res) {
      authService.isAuth = true;
      Get.toNamed(Routes.HOME);
      showSnack('Registration is successfull', isError: false);
    } else {
      showSnack('Registration failed');
    }
  }

  //  void tryRegister(String mail, String password) =>
  //  authService.auth(mail, password, ApiEndpoints.registration);

  void showSnack(String message, {isError = true}) {
    Get.showSnackbar(GetSnackBar(
      message: message,
      backgroundColor: isError ? Colors.red : Colors.green,
      duration: const Duration(seconds: 1),
    ));
  }
}
