import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'localization/app_localization.dart';
import 'presentation/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      fallbackLocale: const Locale('fa', 'IR'),
      title: 'bank',
      initialRoute: AppRoutes.loginPage,
      getPages: AppRoutes.pages,
    );
  }
}
