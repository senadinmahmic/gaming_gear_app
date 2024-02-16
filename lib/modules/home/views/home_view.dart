import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gaming_gear_app/routes/app_routes.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'package:gaming_gear_app/config/app_colors.dart';
import 'package:gaming_gear_app/modules/widgets/custom_elevated_button1.dart';
import 'package:gaming_gear_app/modules/widgets/home_text.dart';
import 'package:gaming_gear_app/modules/widgets/background_container.dart';
import 'package:gaming_gear_app/modules/widgets/background_side_container.dart';
import 'package:gaming_gear_app/data/custom_cards_list.dart';
import 'package:gaming_gear_app/modules/widgets/custom_card_item.dart';
import 'package:gaming_gear_app/modules/widgets/custom_elevated_button2.dart';
import 'package:gaming_gear_app/config/app_icons.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
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
                  width: 0.42,
                  height: 0.9,
                  radius: 40,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(
                        22,
                        22,
                        22,
                        0,
                      ),
                      child: Row(
                        children: [
                          CustomElevatedButton1(
                            padding: EdgeInsets.all(20),
                            boxShadow: BoxShadow(
                              color: Colors.white12,
                              blurRadius: 14,
                              spreadRadius: 0.5,
                              offset: Offset(
                                -5,
                                -5,
                              ),
                            ),
                            icon: menuIcon,
                          ),
                          Spacer(),
                          CustomElevatedButton1(
                            padding: EdgeInsets.all(18),
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
                        horizontal: 20,
                      ),
                      child: SingleChildScrollView(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                layerIcon,
                                colorFilter: ColorFilter.mode(
                                  AppColors.textGrey300!,
                                  BlendMode.srcIn,
                                ),
                                width: 23,
                                height: 23,
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
                              icon: joystickIcon,
                            ),
                            const SizedBox(width: 16),
                            const CustomElevatedButton2(
                              gradientColor1: AppColors.cardPrimary1,
                              gradientColor2: AppColors.cardPrimary2,
                              icon: nintendoIcon,
                            ),
                            const SizedBox(width: 16),
                            const CustomElevatedButton2(
                              gradientColor1: AppColors.cardPrimary1,
                              gradientColor2: AppColors.cardPrimary2,
                              icon: mouseIcon,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.05,
                    ),
                    SizedBox(
                      height: screenSize.height * 0.33,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: customCardsList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed(
                                Routes.ITEMDETAILS,
                                arguments: index,
                              );
                            },
                            child: CustomCardItem(
                              title: customCardsList[index].title,
                              subtitle: customCardsList[index].subtitle,
                              image: customCardsList[index].image,
                              index: index,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
