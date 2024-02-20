import 'package:flutter/cupertino.dart';
import 'package:gaming_gear_app/config/app_colors.dart';

class TopItemInfo extends StatelessWidget {
  const TopItemInfo({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        22,
        12,
        22,
        0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'PLATFORM',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.textWhite,
            ),
          ),
          const Text(
            'PS5',
            style: TextStyle(
              fontSize: 14,
              color: AppColors.textWhite,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: screenSize.height < 800 ? 15 : 30,
          ),
          const Text(
            'RELEASE',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.textWhite,
            ),
          ),
          const Text(
            'Fall 2020',
            style: TextStyle(
              fontSize: 14,
              color: AppColors.textWhite,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'PRICE',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.textWhite,
            ),
          ),
          const Text(
            '\$50',
            style: TextStyle(
              fontSize: 14,
              color: AppColors.textWhite,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
