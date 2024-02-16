import 'package:flutter/material.dart';
import 'package:gaming_gear_app/data/custom_cards_list.dart';
import 'package:gaming_gear_app/modules/widgets/background_side_container.dart';
import 'package:get/get.dart';

import 'package:gaming_gear_app/config/app_colors.dart';
import 'package:gaming_gear_app/modules/widgets/background_container.dart';
import '../controllers/item_details_controller.dart';

class ItemDetailsView extends GetView<ItemDetailsController> {
  const ItemDetailsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final index = controller.index;
    return Scaffold(
      backgroundColor: AppColors.transparent,
      body: BackgroundContainer(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              const BackgroundSideContainer(
                width: 1,
                height: 0.3,
                radius: 0,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => Get.back(),
                      child: const Text(
                        'back',
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 300,
                      child: Hero(
                        tag: 'item$index',
                        child: Image.asset(
                          customCardsList[index].image,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
