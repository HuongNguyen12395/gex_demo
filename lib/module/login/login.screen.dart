import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/login.controller.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({super.key});
  final userController = TextEditingController();
  final passWordController = TextEditingController();
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
              controller: userController,
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
              controller: passWordController,
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
                      controller.login(
                          userController.text, passWordController.text);
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
                ),
              ],
            ),
            controller.count > 1
                ? Text('Counter: ${controller.dataLogin!.email.toString()}')
                : const Text('not data'),
          ],
        )),
      ),
    ));
  }
}
