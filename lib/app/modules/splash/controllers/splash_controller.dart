import 'package:get/get.dart';
import 'package:newkt8/app/data/services/auth_service.dart';
import 'package:newkt8/app/routes/app_pages.dart';

class SplashController extends GetxController {
  AuthService authService = Get.find();
  
    @override
   void onReady() async {
    await authService.tryAuth();
    if (authService.isAuth) {
      Get.offNamed(Routes.HOME);
    }
    else {
      Get.offNamed(Routes.SIGNIN);
    }
    super.onReady();
  }

}