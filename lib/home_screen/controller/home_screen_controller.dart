import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_app/api/repo.dart';
import 'package:ui_app/home_screen/models/product.dart';
import 'package:ui_app/widget/app_size.dart';

class HomeScreenController extends GetxController {
  Size size = Size(Get.width, Get.height);
  RxBool initialLoad = RxBool(true);
  RxList<Product> listOfProduct = <Product>[].obs;
  callApi() async {
    final data = await getRepoData();
    listOfProduct.addAll(data);
    listOfProduct.refresh();
    initialLoad.value = false;
    update();
  }

  @override
  void onInit() {
    AppSize.size = size;
    callApi();
    super.onInit();
  }
}
