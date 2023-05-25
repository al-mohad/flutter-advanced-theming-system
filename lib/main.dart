import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/modules/home/controllers/home_controller.dart';
import 'app/routes/app_pages.dart';

void main() async {
  Get.lazyPut<HomeController>(() => HomeController());
  final HomeController themeController = Get.put(HomeController());

  runApp(
    Obx(() => GetMaterialApp(
          title: "Advanced Theming",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          theme: themeController.lightTheme,
          darkTheme: themeController.darkTheme,
          themeMode: themeController.themeMode.value,
        )),
  );
}
