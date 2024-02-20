import 'package:flutter/material.dart';

import 'package:gaming_gear_app/config/app_colors.dart';

class BottomInfoCard extends StatelessWidget {
  final IconData icon;
  final Color gradientColor1;
  final Color gradientColor2;
  final String cardTitle;
  final String cardSubtitle;
  final Color iconColor;

  const BottomInfoCard({
    super.key,
    required this.icon,
    required this.gradientColor1,
    required this.gradientColor2,
    required this.iconColor,
    required this.cardTitle,
    required this.cardSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Material(
          elevation: 6,
          borderRadius: BorderRadius.circular(14),
          color: AppColors.transparent,
          child: Container(
            padding: const EdgeInsets.all(4),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.white12,
                  blurRadius: 10,
                  spreadRadius: 0.5,
                  offset: Offset(
                    -3,
                    -3,
                  ),
                ),
              ],
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                  gradientColor1,
                  gradientColor2,
                ],
              ),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.transparent,
                border: Border.all(
                  color: AppColors.cardPrimary1,
                  width: 1,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.transparent,
                  border: Border.all(
                    color: AppColors.cardPrimary1,
                    width: 1,
                  ),
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 26,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cardTitle,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColors.textWhite,
              ),
            ),
            Text(
              cardSubtitle,
              style: TextStyle(
                fontSize: 12,
                color: AppColors.textGrey300,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
