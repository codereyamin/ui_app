import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:ui_app/home_screen/widget/row_border.dart';
import 'package:ui_app/utils/app_colors.dart';
import 'package:ui_app/widget/app_circle_image.dart';
import 'package:ui_app/widget/app_size.dart';
import 'package:ui_app/widget/app_text.dart';

class HomePageContainer extends StatelessWidget {
  const HomePageContainer({
    super.key,
    this.isLast = false,
  });
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondaryBackground,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.width(value: 16.0)),
            child: Row(
              children: [
                DottedBorder(
                  color: AppColors.primary,
                  strokeWidth: 2,
                  dashPattern: [6, 3],
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12.0),
                  child: Container(
                    padding: EdgeInsets.all(AppSize.width(value: 12.0)),
                    decoration: BoxDecoration(color: AppColors.background, borderRadius: BorderRadius.circular(12.0)),
                    child: AppCircleImage(
                      size: 40,
                    ),
                  ),
                ),
                SizedBox(
                  width: AppSize.width(value: 12.0),
                ),
                Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(
                          text: "Rounded Table Piza",
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        SizedBox(
                          height: AppSize.height(value: 8.0),
                        ),
                        AppText(
                          text: "Rounded Table Piza",
                        ),
                      ],
                    )),
                SizedBox(
                  width: AppSize.width(value: 12.0),
                ),
                Column(
                  children: [
                    AppText(
                      text: "\$310.5",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      textScaler: TextScaler.linear(0.9),
                      color: AppColors.primary,
                    ),
                    SizedBox(
                      height: AppSize.height(value: 12.0),
                    ),
                    // Container(
                    //   padding: EdgeInsets.symmetric(horizontal: AppSize.width(value: 16), vertical: AppSize.height(value: 4.5)),
                    //   decoration: BoxDecoration(border: Border.all(color: AppColors.primary)),
                    //   child: AppText(
                    //     text: "Add",
                    //     color: AppColors.primary,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: AppSize.width(value: 4.0), vertical: AppSize.height(value: 4.5)),
                      decoration: BoxDecoration(border: Border.all(color: AppColors.primary)),
                      child: Row(
                        children: [
                          Icon(Icons.remove),
                          AppText(
                            text: "25",
                            fontWeight: FontWeight.bold,
                          ),
                          Icon(Icons.add)
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          if (!isLast)
            SizedBox(
              height: AppSize.height(value: 16.0),
            ),
          if (!isLast) RowBorderWidget(),
          SizedBox(
            height: AppSize.height(value: 16.0),
          ),
        ],
      ),
    );
  }
}