import 'package:get/get.dart';
import 'package:newkt8/app/data/services/api_service.dart';
import 'package:newkt8/app/data/services/auth_service.dart';
import 'package:newkt8/app/routes/app_pages.dart';

class HomeController extends GetxController {
  ApiService apiService = Get.find();
  AuthService authService = Get.find();

  void logout() {
    apiService.logout();
  }

  void toLogin() => Get.toNamed(Routes.SIGNIN);
}
