import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_app/home_screen/controller/home_screen_controller.dart';
import 'package:ui_app/home_screen/widget/home_page_container.dart';
import 'package:ui_app/home_screen/widget/top_header.dart';
import 'package:ui_app/utils/app_colors.dart';
import 'package:ui_app/widget/app_size.dart';
import 'package:ui_app/widget/app_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: HomeScreenController(),
        builder: (context) {
          return Scaffold(
            backgroundColor: AppColors.white,
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSize.height(value: 16.0)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TopHeader(),
                      Container(
                        height: AppSize.height(value: 32.0),
                        color: AppColors.secondaryBackground,
                      ),
                      HomePageContainer(),
                      HomePageContainer(),
                      HomePageContainer(),
                      HomePageContainer(
                        isLast: true,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: Container(
              padding: EdgeInsets.all(AppSize.height(value: 16.0)),
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: AppSize.height(value: 12.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        text: "Subtotal",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        textScaler: TextScaler.linear(0.9),
                      ),
                      AppText(
                        text: "\$310.5",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        textScaler: TextScaler.linear(0.9),
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppSize.height(value: 14.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        text: "Vat(5%) Service Charge included (5%)",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        textScaler: TextScaler.linear(0.9),
                        color: AppColors.blue,
                      ),
                      AppText(
                        text: "\$5.5",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        textScaler: TextScaler.linear(0.9),
                        color: AppColors.blue,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppSize.height(value: 16.0),
                  ),
                  Container(
                    height: 2,
                    color: AppColors.primary,
                  ),
                  SizedBox(
                    height: AppSize.height(value: 8.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        text: "Total",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        textScaler: TextScaler.linear(0.9),
                      ),
                      AppText(
                        text: "\$316.0",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        textScaler: TextScaler.linear(0.9),
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppSize.height(value: 8.0),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
