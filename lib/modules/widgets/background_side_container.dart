import 'package:flutter/material.dart';

import 'package:gaming_gear_app/config/app_colors.dart';

class BackgroundSideContainer extends StatelessWidget {
  final double width;
  final double height;
  final double radius;

  const BackgroundSideContainer({
    required this.width,
    required this.height,
    required this.radius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return AnimatedContainer(
      width: screenSize.width * width, //0.42,
      height: screenSize.height * height, // 0.9,
      duration: const Duration(milliseconds: 500),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(radius),
        ),
        gradient: const LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            AppColors.secondary1,
            AppColors.secondary2,
          ],
        ),
      ),
      child: const FittedBox(
        alignment: Alignment.topRight,
        child: RotatedBox(
          quarterTurns: 3,
          child: Opacity(
            opacity: 0.1,
            child: Text(
              'GAMING GEAR',
              style: TextStyle(
                color: AppColors.textWhite,
                fontWeight: FontWeight.bold,
                height: 0.8,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
