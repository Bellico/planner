import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:planner/app/app.dart';
import 'package:planner/app/constants/firebase_options.dart';
import 'package:planner/app/extensions/register_extensions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  GetIt.instance.registerDependencies();

  runApp(ProviderScope(child: const MyApp()));
}
