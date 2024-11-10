import 'package:go_router/go_router.dart';
import 'package:planner/features/auth/routes.dart';
import 'package:planner/features/timenote/routes.dart';

final appRouter = GoRouter(
  initialLocation: '/auth',
  routes: [
    registerAuthRoutes().toGoRoute(),
    registerTimenoteRoutes().toGoRoute(),
  ],
);
