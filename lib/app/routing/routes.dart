import 'package:go_router/go_router.dart';
import 'package:planner/core/extensions/string_extensions.dart';
import 'package:planner/features/auth/presentation/pages/auth_page.dart';
import 'package:planner/features/timenote/presentation/pages/month_page.dart';

class AppRouter {
  static String initialLocation = AuthPage.route;

  static final routes = [
    GoRoute(
      path: AuthPage.route,
      name: AuthPage.route.namedRoute(),
      builder: (c, s) => const AuthPage(),
    ),
    GoRoute(
      path: TimeMonthPage.route,
      builder: (c, s) => const TimeMonthPage(),
      routes: [],
    ),
  ];
}
