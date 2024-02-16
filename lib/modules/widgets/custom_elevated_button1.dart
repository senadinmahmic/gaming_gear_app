import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:gaming_gear_app/config/app_colors.dart';

class CustomElevatedButton1 extends StatelessWidget {
  final String icon;
  final BoxShadow boxShadow;
  final EdgeInsetsGeometry padding;

  const CustomElevatedButton1({
    super.key,
    required this.icon,
    required this.boxShadow,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(30),
      color: AppColors.transparent,
      child: Container(
          padding: padding,
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            boxShadow: [boxShadow],
            gradient: const LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                AppColors.cardPrimary1,
                AppColors.cardPrimary2,
              ],
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
              AppColors.textGrey300!,
              BlendMode.srcIn,
            ),
          )),
    );
  }
}
