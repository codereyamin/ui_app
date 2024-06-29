import 'package:flutter/material.dart';
import 'package:ui_app/utils/app_colors.dart';
import 'package:ui_app/widget/app_size.dart';

class AppCircleImage extends StatelessWidget {
  const AppCircleImage({
    super.key,
    this.url,
    this.size = 70,
    this.fit = BoxFit.contain,
    this.height,
    this.width,
  });
  final String? url;
  final double size;
  final double? width;
  final double? height;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size),
      child: CircleAvatar(
        radius: size / 2,
        backgroundColor: AppColors.primary,
        child: SizedBox(
          width: AppSize.height(value: width ?? size),
          height: AppSize.width(value: height ?? size),
          child: url != null
              ? Image.network(
                  url!,
                  fit: fit,
                  width: AppSize.height(value: width ?? size),
                  height: AppSize.width(value: height ?? size),
                  alignment: Alignment.center,
                  errorBuilder: (context, error, stackTrace) {
                    return SizedBox(
                      width: AppSize.height(value: width ?? size),
                      height: AppSize.width(value: height ?? size),
                      child: Image.asset(
                        "assets/placeholder.jpg",
                        fit: BoxFit.contain,
                        width: AppSize.height(value: width ?? size),
                        height: AppSize.width(value: height ?? size),
                        alignment: Alignment.center,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: AppSize.height(value: width ?? size),
                            height: AppSize.width(value: height ?? size),
                            color: AppColors.primary,
                          );
                        },
                      ),
                    );
                  },
                )
              : Container(
                  width: AppSize.height(value: width ?? size),
                  height: AppSize.width(value: height ?? size),
                  color: AppColors.primary,
                ),
        ),
      ),
    );
  }
}
