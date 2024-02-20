import 'package:flutter/animation.dart';
import 'package:gaming_gear_app/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final animateSideContainer = false.obs;
  final itemRotation = 0.0.obs;
  AnimationController? animationController;
  late int clickedIndex = -1.obs;
  final isTransitioning = false.obs;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..addListener(() {
        itemRotation.value = animationController!.value * 1;
      });
  }

  void itemRotate() {
    animationController!.forward(from: 0.75);
  }

  @override
  void onClose() {
    animationController!.stop();
    animationController!.dispose();
    super.onClose();
  }

  void onItemTap(int index) async {
    if (!isTransitioning.value) {
      isTransitioning.value = true;
      await Get.toNamed(
        Routes.ITEMDETAILS,
        arguments: index,
      );
      clickedIndex = index;
      itemRotate();
      Future.delayed(
        const Duration(milliseconds: 1000),
        () {
          isTransitioning.value = false;
        },
      );
    }
  }
}
