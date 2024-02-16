import 'package:flutter/material.dart';
import 'package:gaming_gear_app/modules/widgets/custom_elevated_button2.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'package:gaming_gear_app/config/app_colors.dart';
import 'package:gaming_gear_app/modules/widgets/custom_elevated_button1.dart';
import 'package:gaming_gear_app/modules/widgets/home_text.dart';
import 'package:gaming_gear_app/modules/widgets/background_container.dart';
import 'package:gaming_gear_app/modules/widgets/background_side_container.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (!controller.itemSelected.value) {
        return _buildFirstScreen();
      } else {
        return _buildSecondScreen();
      }
    });
  }

  Widget _buildFirstScreen() {
    return Scaffold(
      backgroundColor: AppColors.transparent,
      body: BackgroundContainer(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              const BackgroundSideContainer(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 22),
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Row(
                          children: [
                            CustomElevatedButton1(
                              boxShadow: BoxShadow(
                                color: Colors.white12,
                                blurRadius: 14,
                                spreadRadius: 0.5,
                                offset: Offset(
                                  -5,
                                  -5,
                                ),
                              ),
                              icon: Icons.menu,
                            ),
                            Spacer(),
                            CustomElevatedButton1(
                              boxShadow: BoxShadow(
                                color: Colors.black54,
                                blurRadius: 14,
                                spreadRadius: 0.5,
                                offset: Offset(
                                  6,
                                  6,
                                ),
                              ),
                              icon: Icons.shopping_cart_outlined,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const HomeText(),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 0,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.layers_outlined,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 16),
                              const CustomElevatedButton2(
                                boxShadow: BoxShadow(
                                  color: AppColors.secondary1,
                                  blurRadius: 14,
                                  spreadRadius: 0.8,
                                  offset: Offset(
                                    0,
                                    0,
                                  ),
                                ),
                                gradientColor1: AppColors.secondary1,
                                gradientColor2: AppColors.secondary2,
                                icon: Icons.games_outlined,
                              ),
                              const SizedBox(width: 16),
                              const CustomElevatedButton2(
                                gradientColor1: AppColors.cardPrimary1,
                                gradientColor2: AppColors.cardPrimary2,
                                icon: Icons.keyboard_outlined,
                              ),
                              const SizedBox(width: 16),
                              const CustomElevatedButton2(
                                gradientColor1: AppColors.cardPrimary1,
                                gradientColor2: AppColors.cardPrimary2,
                                icon: Icons.mouse_outlined,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSecondScreen() {
    return const Scaffold(
      backgroundColor: AppColors.transparent,
      body: BackgroundContainer(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              BackgroundSideContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
