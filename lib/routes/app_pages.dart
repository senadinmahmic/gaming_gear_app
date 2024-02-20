import 'package:gaming_gear_app/routes/app_routes.dart';
import 'package:get/get.dart';

import 'package:gaming_gear_app/modules/home/views/home_view.dart';
import 'package:gaming_gear_app/modules/home/bindings/home_bindings.dart';
import 'package:gaming_gear_app/modules/item_details/views/item_details_view.dart';
import 'package:gaming_gear_app/modules/item_details/bindings/item_details_bindings.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBindings(),
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: Routes.ITEMDETAILS,
      page: () => const ItemDetailsView(),
      binding: ItemDetailsBindings(),
      transitionDuration: const Duration(milliseconds: 1000),
    ),
  ];
}
