import 'package:flutter/material.dart';
import 'package:ui_app/utils/app_colors.dart';
import 'package:ui_app/widget/app_size.dart';
import 'package:ui_app/widget/app_text.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primary, AppColors.seconder],
          ),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0))),
      padding: EdgeInsets.all(AppSize.height(value: 16.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: "BreakFast",
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              AppText(
                text: "Vat(5%) Service Charge included (5%)",
                color: AppColors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ],
          )),
          Icon(
            Icons.keyboard_control_key,
            color: AppColors.white,
            size: 32,
          ),
        ],
      ),
    );
  }
}
