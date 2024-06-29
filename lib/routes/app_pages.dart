import 'package:get/get.dart';
import 'package:ui_app/home_screen/controller/home_screen_controller.dart';
import 'package:ui_app/home_screen/home_screen.dart';
import 'package:ui_app/routes/app_routes.dart';

List<GetPage> appPages = [
  GetPage(
    name: AppRoutes.home,
    page: () => HomeScreen(),
    binding: BindingsBuilder(
      () => Get.lazyPut(
        () => HomeScreenController(),
      ),
    ),
  )
];
