import 'package:flutter/material.dart';
import 'package:gaming_gear_app/config/app_colors.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget child;

  const BackgroundContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            AppColors.backgroundPrimary1,
            AppColors.backgroundPrimary2,
          ],
        ),
      ),
      child: child,
    );
  }
}
