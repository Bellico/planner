import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:planner/features/timenote/routes.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => context.goNamed(TimenoteRoutes.dragg),
        child: Text('Welcome Demo'),
      ),
    );
  }
}
