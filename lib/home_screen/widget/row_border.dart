import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_app/utils/app_colors.dart';
import 'package:ui_app/widget/app_size.dart';

class RowBorderWidget extends StatelessWidget {
  const RowBorderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 15,
          width: Get.width - AppSize.width(value: 20),
        ),
        CustomPaint(
          painter: DottedBorderPainter(),
          child: SizedBox(
            width: Get.width - AppSize.width(value: 20),
            height: 1,
          ),
        ),
        Positioned(
          left: AppSize.width(value: 20),
          height: 10,
          width: 10,
          child: Transform.rotate(
            angle: 7,
            child: Container(
              height: 10,
              width: 10,
              color: AppColors.primary,
            ),
          ),
        ),
        Positioned(
          right: AppSize.width(value: 20),
          height: 10,
          width: 10,
          child: Transform.rotate(
            angle: 7,
            child: Container(
              height: 10,
              width: 10,
              color: AppColors.primary,
            ),
          ),
        )
      ],
    );
  }
}

class DottedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.primary
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    const double dashWidth = 5;
    const double dashSpace = 5;

    double startX = AppSize.width(value: 22);

    while (startX < size.width - AppSize.width(value: 30)) {
      canvas.drawLine(
        Offset(startX, size.height),
        Offset(startX + dashWidth, size.height),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
