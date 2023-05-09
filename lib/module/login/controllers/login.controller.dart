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

  void login() async {
    print('vào đây');
    dataLogin = await _loginService.login(
        username: 'cuongln.hust@gmail.com', password: '123456');
    update();
    print(dataLogin!.email);
  }
}
