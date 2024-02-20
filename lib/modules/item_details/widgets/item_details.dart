import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:gaming_gear_app/config/app_colors.dart';
import 'package:gaming_gear_app/data/custom_cards_list.dart';
import 'package:gaming_gear_app/modules/item_details/controllers/item_details_controller.dart';

class ItemDetails extends GetView<ItemDetailsController> {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final index = controller.index;

    return Obx(
      () {
        final animateScreen = controller.animateScreenContent.value;
        return AnimatedOpacity(
          duration: const Duration(milliseconds: 3000),
          opacity: animateScreen ? 1 : 0,
          child: SizedBox(
            width: screenSize.width - 44,
            height: screenSize.height < 800 ? 100 : 125,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  customCardsList[index].title,
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: screenSize.height < 800 ? 20 : 24,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  customCardsList[index].description == null
                      ? ''
                      : customCardsList[index].description!,
                  style: TextStyle(
                    color: AppColors.textGrey300,
                    fontSize: 14,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: screenSize.height < 800 ? 3 : 4,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
