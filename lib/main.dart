import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:gaming_gear_app/routes/app_pages.dart';
import 'package:gaming_gear_app/routes/app_routes.dart';
import 'package:gaming_gear_app/modules/home/bindings/home_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Gaming gear app',
        getPages: AppPages.routes,
        initialRoute: Routes.HOME,
        initialBinding: HomeBindings(),
      ),
    );
  }
}
