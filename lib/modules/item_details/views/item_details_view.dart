import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gaming_gear_app/config/app_colors.dart';
import 'package:gaming_gear_app/modules/widgets/background_container.dart';
import '../controllers/item_details_controller.dart';

class ItemDetailsView extends GetView<ItemDetailsController> {
  const ItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Item Details Here',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.textWhite,
                ),
              ),
              ElevatedButton(
                onPressed: () => Get.back(),
                child: const Text(
                  'Go to Item Details',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
