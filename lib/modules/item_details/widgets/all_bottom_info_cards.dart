import 'package:flutter/material.dart';

import 'package:gaming_gear_app/config/app_colors.dart';
import 'package:gaming_gear_app/modules/item_details/controllers/item_details_controller.dart';
import 'package:gaming_gear_app/modules/item_details/widgets/bottom_info_card.dart';
import 'package:get/get.dart';

class AllBottomInfoCards extends GetView<ItemDetailsController> {
  const AllBottomInfoCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final screenAnimate = controller.animateScreenContent.value;
        return AnimatedOpacity(
          duration: const Duration(milliseconds: 3000),
          opacity: screenAnimate ? 1 : 0,
          child: const SingleChildScrollView(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BottomInfoCard(
                      cardTitle: 'Futuristic',
                      cardSubtitle: 'Design',
                      icon: Icons.auto_awesome_outlined,
                      iconColor: Color(0xFF33baec),
                      gradientColor1: AppColors.cardPrimary1,
                      gradientColor2: AppColors.cardPrimary2,
                    ),
                    SizedBox(height: 24),
                    BottomInfoCard(
                      cardTitle: 'Haptic',
                      cardSubtitle: 'Feedback',
                      icon: Icons.gamepad_outlined,
                      iconColor: Color(0xFFd860fd),
                      gradientColor1: AppColors.cardPrimary1,
                      gradientColor2: AppColors.cardPrimary2,
                    ),
                  ],
                ),
                SizedBox(width: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BottomInfoCard(
                      cardTitle: 'Built-in',
                      cardSubtitle: 'Microphone',
                      icon: Icons.mic_none,
                      iconColor: Color(0xFF548bff),
                      gradientColor1: AppColors.cardPrimary1,
                      gradientColor2: AppColors.cardPrimary2,
                    ),
                    SizedBox(height: 24),
                    BottomInfoCard(
                      cardTitle: 'Fast charge',
                      cardSubtitle: 'USB-C port',
                      icon: Icons.battery_charging_full_rounded,
                      iconColor: Color(0xFF8859f1),
                      gradientColor1: AppColors.cardPrimary1,
                      gradientColor2: AppColors.cardPrimary2,
                    ),
                  ],
                ),
                SizedBox(width: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BottomInfoCard(
                      cardTitle: 'Fast charge',
                      cardSubtitle: 'USB-C port',
                      icon: Icons.battery_charging_full_rounded,
                      iconColor: Color(0xFFF44336),
                      gradientColor1: AppColors.cardPrimary1,
                      gradientColor2: AppColors.cardPrimary2,
                    ),
                    SizedBox(height: 24),
                    BottomInfoCard(
                      cardTitle: 'Futuristic',
                      cardSubtitle: 'Design',
                      icon: Icons.auto_awesome_outlined,
                      iconColor: Color(0xFF33baec),
                      gradientColor1: AppColors.cardPrimary1,
                      gradientColor2: AppColors.cardPrimary2,
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
