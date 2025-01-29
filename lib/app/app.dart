import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planner/app/routing/app_router.dart';
import 'package:planner/app/themes/themes.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightMode, //Provider.of<ThemeProvider>(ctx).themeData
      darkTheme: darkMode,
      routerConfig: ref.watch(appRouterProvider),
    );
  }
}
