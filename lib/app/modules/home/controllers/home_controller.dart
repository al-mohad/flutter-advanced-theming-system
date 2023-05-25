import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxBool isDarkMode = false.obs;
  final Rx<FlexScheme> scheme = FlexScheme.values[0].obs;
  final Rx<ThemeMode> themeMode = ThemeMode.light.obs;
  List<FlexScheme> allSchemes = FlexScheme.values;

  void changeThemeMode(bool value) {
    isDarkMode.value = value;
    themeMode.value = value ? ThemeMode.dark : ThemeMode.light;
    update();
  }

  void changeScheme(FlexScheme value) {
    scheme.value = value;
    update();
  }

  ThemeData get lightTheme {
    return FlexColorScheme.light(
      scheme: scheme.value,
    ).toTheme;
  }

  ThemeData get darkTheme {
    return FlexColorScheme.dark(
      scheme: scheme.value,
    ).toTheme;
  }

  bg(FlexColorScheme scheme) {
    scheme.background;
  }

  bg2(FlexScheme scheme) {}
}
