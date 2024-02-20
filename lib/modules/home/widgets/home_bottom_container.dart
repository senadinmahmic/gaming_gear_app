import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gaming_gear_app/config/app_colors.dart';
import 'package:gaming_gear_app/modules/item_details/controllers/item_details_controller.dart';

class HomeBottomContainer extends GetView<ItemDetailsController> {
  const HomeBottomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
      ),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 4,
          ),
          width: double.infinity,
          height: 80,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white10,
                blurRadius: 10,
                spreadRadius: 0.5,
                offset: Offset(
                  -5,
                  -5,
                ),
              ),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(
                12,
              ),
            ),
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                AppColors.cardPrimary1,
                AppColors.cardPrimary2,
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: screenSize.width * 0.4,
                  height: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        AppColors.secondary1,
                        AppColors.secondary2,
                      ],
                    ),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 12,
                        ),
                        child: Icon(
                          Icons.home_outlined,
                          color: AppColors.textWhite,
                          size: 26,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white12,
                                offset: Offset(
                                  1,
                                  0,
                                ),
                              ),
                            ],
                            color: Colors.black12,
                          ),
                          width: 1,
                          height: double.infinity,
                        ),
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(
                          right: 12,
                        ),
                        child: Text(
                          'Home',
                          style: TextStyle(
                            color: AppColors.textWhite,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
              Icon(
                Icons.person_3_outlined,
                color: AppColors.textGrey600,
                size: 26,
              ),
              Icon(
                Icons.settings_outlined,
                color: AppColors.textGrey600,
                size: 26,
              ),
              if (screenSize.width >= 400)
                Icon(
                  Icons.bookmark_border,
                  color: AppColors.textGrey600,
                  size: 26,
                )
            ],
          ),
        ),
      ),
    );
  }
}
