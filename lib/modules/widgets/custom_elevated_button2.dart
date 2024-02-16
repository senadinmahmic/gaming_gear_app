import 'package:flutter/material.dart';

import 'package:gaming_gear_app/config/app_colors.dart';

class CustomElevatedButton2 extends StatelessWidget {
  final IconData icon;
  final Color gradientColor1;
  final Color gradientColor2;
  final BoxShadow? boxShadow;

  const CustomElevatedButton2({
    super.key,
    required this.icon,
    required this.gradientColor1,
    required this.gradientColor2,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(26),
      color: AppColors.transparent,
      child: Container(
        height: 70,
        width: 70,
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
          borderRadius: BorderRadius.circular(26),
        ),
        child: Icon(
          icon,
          color: AppColors.textGrey300,
          size: 30,
        ),
      ),
    );
  }
}
