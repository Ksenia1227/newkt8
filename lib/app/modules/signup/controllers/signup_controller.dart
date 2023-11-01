import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newkt8/app/data/services/auth_service.dart';
import 'package:newkt8/app/routes/app_pages.dart';

class SignupController extends GetxController {
   AuthService authService = Get.find();
  void toLogin() => Get.toNamed(Routes.SIGNIN);
  var mailController = TextEditingController();
  var passController = TextEditingController();
  var passRepController = TextEditingController();

  void signUp() {
    if (mailController.text.contains("@")) {
      showError("Неправильно указанная почта");
    }
    if (passRepController.text.length < 8) {
      showError("Длина пароля должна быть более 8 символов");
    }
    if (passController.text != passRepController.text) {
      showError("Пароли не совпадают!");
    }
  }

  void tryRegister(String mail, String password) =>
      authService.registration(mail, password);

  void showError(
    String message,
  ) {
    GetSnackBar(
      message: message,
      backgroundColor: Colors.black,
      duration: const Duration(seconds: 1),
    );
  }
}