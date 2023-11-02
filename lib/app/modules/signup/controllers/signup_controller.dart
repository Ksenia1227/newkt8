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

  void signUp () async {
    if (!mailController.text.contains("@")) {
      showSnack("Неправильно указанная почта");
    }
    if (passRepController.text.length < 8) {
      showSnack("Длина пароля должна быть более 8 символов");
    }
    if (passController.text != passRepController.text) {
      showSnack("Пароли не совпадают!");
    }
    bool res= await authService.registration(mailController.text, passController.text);
    if(res){
      authService.isAuth = true;
      Get.toNamed(Routes.HOME);
      showSnack('Registration is successfull', isError:false);

    }else{
      showSnack('Registration failed');
    }
  }
  

  void tryRegister(String mail, String password) =>
      authService.registration(mail, password);

  void showSnack(
    String message,{isError=true}
  ) {
    Get.showSnackbar(
    GetSnackBar(
      message: message,
      backgroundColor: isError? Colors.red:Colors.green,
      duration: const Duration(seconds: 1),
    ));
  }
}