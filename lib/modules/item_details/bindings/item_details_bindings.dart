import 'package:get/get.dart';

import 'package:gaming_gear_app/modules/item_details/controllers/item_details_controller.dart';

class ItemDetailsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemDetailsController>(() => ItemDetailsController());
  }
}
