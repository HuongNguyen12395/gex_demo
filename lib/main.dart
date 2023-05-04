import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_demo/shared/navigation/navigation.dart';
import 'shared/navigation/routes.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  const Main(this.initialRoute, {super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      getPages: Nav.routes,
      // theme: AppThemes.light,
      // darkTheme: AppThemes.dark,
      themeMode: ThemeMode.system,
      // translationsKeys: AppTranslation.translations,
      // locale: const Locale('en', 'EN'),
    );
  }
}
