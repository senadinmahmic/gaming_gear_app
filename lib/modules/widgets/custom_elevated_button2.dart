import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:gaming_gear_app/config/app_colors.dart';

class CustomElevatedButton2 extends StatelessWidget {
  final String icon;
  final Color gradientColor1;
  final Color gradientColor2;
  final BoxShadow? boxShadow;
  final void Function()? onTap;

  const CustomElevatedButton2({
    super.key,
    required this.icon,
    required this.gradientColor1,
    required this.gradientColor2,
    this.boxShadow,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(26),
        color: AppColors.transparent,
        child: Container(
          padding: const EdgeInsets.all(12),
          height: screenSize.height < 800 ? 60 : 66,
          width: screenSize.height < 800 ? 60 : 66,
          decoration: BoxDecoration(
            boxShadow: boxShadow != null ? [boxShadow!] : null,
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                gradientColor1,
                gradientColor2,
              ],
            ),
            borderRadius:
                BorderRadius.circular(screenSize.height < 800 ? 22 : 26),
          ),
          child: SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
              AppColors.textGrey300!,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
