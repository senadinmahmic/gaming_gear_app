import 'package:get/get.dart';

class HomeController extends GetxController {
  final itemSelected = false.obs;

  void toggleIsItemSelected() {
    itemSelected.value = !itemSelected.value;
  }
}
