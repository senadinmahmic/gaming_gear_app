import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ItemDetailsController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final int index = Get.arguments;
  final itemRotation = 0.0.obs;
  AnimationController? animationController;
  final animateScreenContent = false.obs;

  @override
  void onInit() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..addListener(() {
        itemRotation.value = animationController!.value * -0.25;
      });
    toggleAnimateScreenContent();
    itemRotate();
    super.onInit();
  }

  void itemRotate() {
    animationController!.forward(from: 0);
  }

  void toggleAnimateScreenContent() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      animateScreenContent.value = true;
    });
  }

  @override
  void onClose() {
    animationController!.stop();
    animationController!.dispose();
    super.onClose();
  }

  void onBack() {
    animateScreenContent.value = false;
  }
}
