import 'package:flutter/material.dart';

class CustomCardModel extends StatelessWidget {
  const CustomCardModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
