import 'package:get/get.dart';

class HomeController extends GetxController {
  final animateSideContainer = false.obs;

  @override
  void onInit() {
    animateSideContainer.value = true;
    super.onInit();
  }
}
