import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planner/core/providers/user_provider.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  static const String route = '/auth';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: GestureDetector(
        onTap: () => ref.read(userStateProdiver.notifier).loginWithGoogle(),
        child: Text('Welcome Demo'),
      ),
    );
  }
}
