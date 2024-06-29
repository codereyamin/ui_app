import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_app/api/repo.dart';
import 'package:ui_app/home_screen/models/product.dart';
import 'package:ui_app/widget/app_size.dart';

class HomeScreenController extends GetxController {
  Size size = Size(Get.width, Get.height);
  RxBool initialLoad = RxBool(true);
  RxDouble totalValue = RxDouble(0.0);
  RxList<Product> listOfProduct = <Product>[].obs;
  callApi() async {
    final data = await getRepoData();
    listOfProduct.addAll(data);
    listOfProduct.refresh();
    initialLoad.value = false;
    update();
  }

  double getAllPrice() {
    int data = 0;
    for (var element in listOfProduct) {
      if (element.isClick ?? false) {
        if (element.discountPrice != null || element.discountPrice != 0) {
          data = data + (element.discountPrice! * element.quantity!);
        } else {
          data = data + (element.price! * element.quantity!);
        }
      }
    }

    return double.parse(data.toString());
  }

  addButton(int index) {
    listOfProduct[index].isClick = true;
    totalValue.value = getAllPrice();
    listOfProduct.refresh();

    update();
  }

  increment(int index) {
    listOfProduct[index].quantity = listOfProduct[index].quantity! + 1;
    totalValue.value = getAllPrice();
    listOfProduct.refresh();
    update();
  }

  decrement(int index) {
    if (listOfProduct[index].quantity != null) {
      if (listOfProduct[index].quantity! > 1) {
        listOfProduct[index].quantity = listOfProduct[index].quantity! - 1;
      } else {
        listOfProduct[index].isClick = false;
      }
    }
    totalValue.value = getAllPrice();
    listOfProduct.refresh();
    update();
  }

  @override
  void onInit() {
    AppSize.size = size;
    callApi();
    super.onInit();
  }
}
