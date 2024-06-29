import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ui_app/routes/app_pages.dart';
import 'package:ui_app/routes/app_routes.dart';
import 'package:ui_app/utils/app_colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.white,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'flutter ui app',
      initialRoute: AppRoutes.home,
      debugShowCheckedModeBanner: false,
      getPages: appPages,
      theme: ThemeData(),
    );
  }
}
