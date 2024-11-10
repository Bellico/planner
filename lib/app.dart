import 'package:flutter/material.dart';
import 'package:planner/app_router.dart';
import 'package:planner/core/themes/themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint(MediaQuery.of(context).platformBrightness.toString());
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightMode, //Provider.of<ThemeProvider>(ctx).themeData
      darkTheme: darkMode,
      routerConfig: appRouter,
    );
  }
}
