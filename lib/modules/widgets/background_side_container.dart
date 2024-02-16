import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gaming_gear_app/config/app_colors.dart';
import 'package:gaming_gear_app/modules/home/controllers/home_controller.dart';

class BackgroundSideContainer extends GetView<HomeController> {
  const BackgroundSideContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Obx(
      () {
        final itemSelected = controller.itemSelected.value;
        return AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          right: 0,
          child: AnimatedContainer(
            width: !itemSelected ? screenSize.width * 0.42 : screenSize.width,
            height: !itemSelected
                ? screenSize.height * 0.9
                : screenSize.height * 0.45,
            duration: const Duration(milliseconds: 500),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(!itemSelected ? 40 : 0),
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
            child: !itemSelected
                ? const FittedBox(
                    alignment: Alignment.topRight,
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Opacity(
                        opacity: 0.1,
                        child: Text(
                          'GAMING GEAR',
                          style: TextStyle(
                              color: AppColors.textWhite,
                              fontWeight: FontWeight.bold,
                              height: 0.8),
                        ),
                      ),
                    ),
                  )
                : ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.2)
                        ],
                        stops: const [
                          0.0,
                          1,
                        ],
                      ).createShader(bounds);
                    },
                    blendMode: BlendMode.dstIn,
                    child: AnimatedOpacity(
                      duration: const Duration(
                        milliseconds: 1000,
                      ),
                      opacity: !itemSelected ? 0.0 : 0.3,
                      child: Image.asset(
                        'assets/images/container_background.png',
                        fit: BoxFit.fill,
                        color: AppColors.white,
                      ),
                    ),
                  ),
          ),
        );
      },
    );
  }
}
