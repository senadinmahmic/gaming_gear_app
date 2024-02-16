import 'package:flutter/material.dart';

import 'package:gaming_gear_app/config/app_colors.dart';

class CustomElevatedButton1 extends StatelessWidget {
  final IconData icon;
  final BoxShadow boxShadow;

  const CustomElevatedButton1({
    super.key,
    required this.icon,
    required this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(30),
      color: AppColors.transparent,
      child: Container(
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
        child: Icon(
          icon,
          color: AppColors.textGrey300,
        ),
      ),
    );
  }
}
