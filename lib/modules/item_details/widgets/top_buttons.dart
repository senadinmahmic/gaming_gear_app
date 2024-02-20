import 'package:flutter/material.dart';
import 'package:gaming_gear_app/modules/item_details/controllers/item_details_controller.dart';
import 'package:get/get.dart';

import 'package:gaming_gear_app/config/app_colors.dart';
import 'package:gaming_gear_app/config/app_icons.dart';
import 'package:gaming_gear_app/modules/widgets/custom_elevated_button1.dart';

class TopButtons extends GetView<ItemDetailsController> {
  const TopButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        12,
        22,
        22,
        0,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.keyboard_backspace_rounded,
              size: 30,
              color: AppColors.textWhite,
            ),
          ),
          const Spacer(),
          const CustomElevatedButton1(
            padding: EdgeInsets.all(14),
            boxShadow: BoxShadow(
              color: Colors.black54,
              blurRadius: 14,
              spreadRadius: 0.5,
              offset: Offset(
                6,
                6,
              ),
            ),
            icon: cartIcon,
          ),
        ],
      ),
    );
  }
}
