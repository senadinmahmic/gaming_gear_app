import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    final currentScreen = Get.currentRoute;

    return Container(
      width: screenSize.width * width,
      height: screenSize.height * height,
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
      child: FittedBox(
        alignment: Alignment.topRight,
        child: currentScreen == '/home'
            ? const RotatedBox(
                quarterTurns: 3,
                child: Opacity(
                  opacity: 0.1,
                  child: Text(
                    'GAMING GEAR',
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontWeight: FontWeight.bold,
                      height: 0.7,
                    ),
                  ),
                ),
              )
            : Opacity(
                opacity: 0.1,
                child: Image.asset(
                  'assets/images/container_background.png',
                  color: Colors.white,
                  fit: BoxFit.fill,
                ),
              ),
      ),
    );
  }
}
