import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:planner/app.dart';
import 'package:planner/core/constants/firebase_options.dart';
import 'package:planner/core/extensions/register.dart';
import 'package:planner/features/timenote/register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  GetIt.instance
    ..registerCoreDependencies()
    ..registerTimenoteDependencies();

  runApp(ProviderScope(child: const MyApp()));
}
