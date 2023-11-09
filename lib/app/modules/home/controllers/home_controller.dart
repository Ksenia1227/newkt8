import 'package:get/get.dart';
import 'package:newkt8/app/data/services/api_service.dart';
import 'package:newkt8/app/data/services/auth_service.dart';
import 'package:newkt8/app/routes/app_pages.dart';

class HomeController extends GetxController {
  ApiService apiService = Get.find();
  AuthService authService = Get.find();
   RxString welcometext = "1".obs;
  // RxString get ;
  Future<void> getUser() async {
    var res = await apiService.getUser();
    welcometext.value=res;
  }

  void logout() {
    authService.logout();
  }

  void toLogin() => Get.toNamed(Routes.SIGNIN);
  @override
  void onReady() {
    getUser();
    super.onReady();
    ;
  }
}
