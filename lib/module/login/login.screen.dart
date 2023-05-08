import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../shared/service/login/login_model.dart';
import '../../shared/service/login/login_service.dart';
import 'controllers/login.controller.dart';

class LoginScreen extends GetView<LoginController> {
  final LoginService _loginService = LoginService();
  List<LoginModel>? _dataLogin;

  LoginScreen({super.key});

  void _load() async {
    final books = await _loginService.login(
        username: 'cuongln.hust@gmail.com', password: '123456');

    print(books);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            child: Column(
          children: [
            const SizedBox(
              height: 270,
            ),
            Text(
              'screen_login'.tr,
              style: const TextStyle(fontSize: 26),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.person),
                hintText: 'Input email address',
                labelText: 'field_username'.tr,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.security),
                hintText: 'Input Password',
                labelText: 'field_password'.tr,
                suffixIcon: IconButton(
                  icon: const Icon(Icons.remove_red_eye),
                  onPressed: () {},
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed('/forget');
                },
                child: Text('button_forget_password'.tr)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      _load();
                    },
                    child: Text('button_login'.tr),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/register');
                    },
                    child: Text('button_register'.tr),
                  ),
                )
              ],
            )
          ],
        )),
      ),
    ));
  }
}
