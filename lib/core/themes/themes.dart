import 'package:flutter/material.dart';
import 'package:planner/core/themes/text_theme.dart';

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(surface: Colors.red.shade400),
  primaryColor: Colors.grey.shade300,
  appBarTheme: const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: Color(0XFF8B8B8B)),
    titleTextStyle: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
  ),
  textTheme: TextTheme(
    bodyLarge: AppTextStyles.bodyLg.copyWith(color: Colors.white),
    bodyMedium: AppTextStyles.body.copyWith(color: Colors.white),
    titleMedium: AppTextStyles.bodySm.copyWith(color: Colors.white),
    titleSmall: AppTextStyles.bodyXs.copyWith(color: Colors.white),
    displayLarge: AppTextStyles.h1.copyWith(color: Colors.white),
    displayMedium: AppTextStyles.h2.copyWith(color: Colors.white),
    displaySmall: AppTextStyles.h3.copyWith(color: Colors.white),
    headlineMedium: AppTextStyles.h4.copyWith(color: Colors.white),
  ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(surface: Colors.grey.shade900),
  primaryColor: Colors.green.shade300,
);

class ThemeNotifier with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;
  void setTheme(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners();
  }
}
