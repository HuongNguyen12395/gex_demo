import 'package:get/get.dart';

import '../../../shared/service/login/login_model.dart';
import '../../../shared/service/login/login_service.dart';

class LoginController extends GetxController {
  final LoginService _loginService = LoginService();
  LoginModel? dataLogin;

  final count = 0.obs;

  @override
  void onClose() {}
  void increment() {
    count.value++;
    update();
  }

  void login(String username, String password) async {
    try {
      var response =
          await _loginService.login(username: username, password: password);
      if (response == null) {
        return;
      }
      dataLogin = response;
      Get.toNamed('/home');
    } catch (e) {
      print(e);
    }
  }
}
