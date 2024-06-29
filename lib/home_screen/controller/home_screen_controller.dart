import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_app/widget/app_size.dart';

class HomeScreenController extends GetxController {
  Size size = Size(Get.width, Get.height);
  @override
  void onInit() {
    AppSize.size = size;
    super.onInit();
  }
}
