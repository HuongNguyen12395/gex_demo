import 'package:get/get.dart';

import '../../module/home/home.screen.dart';
import '../../module/login/login.screen.dart';
import 'bindings/controllers/home.controller.binding.dart';
import 'routes.dart';
import 'bindings/controllers/login.controller.binding.dart';

// class EnvironmentsBadge extends StatelessWidget {
//   final Widget child;
//   EnvironmentsBadge({required this.child});
//   @override
//   Widget build(BuildContext context) {
//     var env = ConfigEnvironments.getEnvironments()['env'];
//     return env != Environments.PRODUCTION
//         ? Banner(
//             location: BannerLocation.topStart,
//             message: env!,
//             color: env == Environments.QAS ? Colors.blue : Colors.purple,
//             child: child,
//           )
//         : SizedBox(child: child);
//   }
// }

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    // GetPage(
    //   name: Routes.ABOUT,
    //   page: () => AboutScreen(),
    //   binding: AboutControllerBinding(),
    // ),
    // GetPage(
    //   name: Routes.SETTINGS,
    //   page: () => SettingsScreen(),
    //   binding: SettingsControllerBinding(),
    // ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginControllerBinding(),
    ),
    // GetPage(
    //   name: Routes.REGISTER,
    //   page: () => RegisterScreen(),
    //   binding: RegisterControllerBinding(),
    // ),
    // GetPage(
    //   name: Routes.FORGET,
    //   page: () => ForgetScreen(),
    //   binding: ForgetControllerBinding(),
    // ),
  ];
}
