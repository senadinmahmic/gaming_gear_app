import 'package:flutter/material.dart';
import 'package:gaming_gear_app/modules/item_details/widgets/all_bottom_info_cards.dart';
import 'package:gaming_gear_app/modules/item_details/widgets/bottom_container.dart';
import 'package:get/get.dart';

import 'package:gaming_gear_app/data/custom_cards_list.dart';
import 'package:gaming_gear_app/modules/item_details/widgets/top_buttons.dart';
import 'package:gaming_gear_app/modules/widgets/background_side_container.dart';
import 'package:gaming_gear_app/config/app_colors.dart';
import 'package:gaming_gear_app/modules/widgets/background_container.dart';
import '../controllers/item_details_controller.dart';
import 'package:gaming_gear_app/config/app_icons.dart';
import 'package:gaming_gear_app/modules/item_details/widgets/top_item_info.dart';
import 'package:gaming_gear_app/modules/widgets/custom_elevated_button1.dart';
import 'package:gaming_gear_app/modules/item_details/widgets/item_details.dart';

class ItemDetailsView extends GetView<ItemDetailsController> {
  const ItemDetailsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final index = controller.index;
    return Scaffold(
      backgroundColor: AppColors.transparent,
      body: BackgroundContainer(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: BackgroundSideContainer(
                  width: 1,
                  height: 0.45,
                  radius: 0,
                ),
              ),
              Positioned(
                top: screenSize.height * 0.23,
                right: -screenSize.width * 0.05,
                child: SizedBox(
                  width: screenSize.height < 800
                      ? screenSize.height * 0.33
                      : screenSize.height * 0.35,
                  child: Hero(
                    tag: 'item$index',
                    child: Obx(
                      () => RotationTransition(
                        turns: AlwaysStoppedAnimation(
                          controller.itemRotation.value,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 20,
                                spreadRadius: 3,
                                offset: const Offset(3, 3),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            customCardsList[index].image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  TopButtons(),
                  TopItemInfo(),
                ],
              ),
              Positioned(
                left: 22,
                top: screenSize.height * 0.45 - 25,
                child: const CustomElevatedButton1(
                  padding: EdgeInsets.all(16),
                  boxShadow: BoxShadow(
                    color: Colors.black54,
                    blurRadius: 16,
                    spreadRadius: 1,
                    offset: Offset(
                      3,
                      3,
                    ),
                  ),
                  icon: bookmarkIcon,
                ),
              ),
              Obx(
                () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1500),
                  top: screenSize.height * 0.5,
                  bottom: controller.animateScreenContent.value ? 20 : -20,
                  child: SizedBox(
                    width: screenSize.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Obx(
                              () => AnimatedPadding(
                                duration: const Duration(milliseconds: 1500),
                                padding: EdgeInsets.only(
                                  left: controller.animateScreenContent.value
                                      ? 22
                                      : 0,
                                  right: 22,
                                ),
                                child: const ItemDetails(),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Obx(
                              () => AnimatedPadding(
                                duration: const Duration(milliseconds: 2500),
                                padding: EdgeInsets.only(
                                  left: controller.animateScreenContent.value
                                      ? 22
                                      : 0,
                                  right: 22,
                                ),
                                child: const AllBottomInfoCards(),
                              ),
                            ),
                          ],
                        ),
                        const BottmContainer(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
