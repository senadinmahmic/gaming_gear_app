import 'package:flutter/material.dart';

import 'package:gaming_gear_app/config/app_colors.dart';
import 'package:gaming_gear_app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var radius = 20.0; // Adjust this to change the border radius

    path.moveTo(0, 60);
    path.lineTo(0, size.height - radius);
    path.quadraticBezierTo(0, size.height, radius, size.height);
    path.lineTo(size.width - radius, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - radius);
    path.lineTo(size.width, radius);
    path.quadraticBezierTo(size.width, 0, size.width - radius, 0);
    path.lineTo(radius, 37);
    path.quadraticBezierTo(0, 40, 0, 60);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomCardItem extends GetView<HomeController> {
  final String image;
  final String title;
  final String subtitle;
  final int index;

  const CustomCardItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Stack(
        children: [
          // Shadow
          Transform.translate(
            offset: const Offset(-2, -1),
            child: ClipPath(
              clipper: DiagonalClipper(),
              child: Container(
                width: screenSize.width * 0.55,
                height: screenSize.height * 0.33,
                decoration: const BoxDecoration(
                  color: Colors.white12,
                ),
              ),
            ),
          ),
          // Content
          ClipPath(
            clipper: DiagonalClipper(),
            child: Container(
              width: screenSize.width * 0.55,
              height: screenSize.height * 0.33,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                    AppColors.cardPrimary1,
                    AppColors.cardPrimary2,
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 10,
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/images/ps_logo.png',
                        width: 40,
                        height: 40,
                        color: AppColors.cardPrimary2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Hero(
                      tag: 'item$index',
                      child: Obx(
                        () => RotationTransition(
                          turns: AlwaysStoppedAnimation(
                            index == controller.clickedIndex
                                ? controller.itemRotation.value
                                : controller.itemRotation.value * 0.0,
                          ),
                          child: IgnorePointer(
                            child: Image.asset(
                              image,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      color: AppColors.textWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: AppColors.textGrey300,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
