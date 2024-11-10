import 'package:planner/core/models/page_route.dart';
import 'package:planner/features/auth/auth_page.dart';

class AuthRoutes {
  static const String login = 'login';
}

PageRoute registerAuthRoutes() {
  return PageRoute(
    path: '/auth',
    name: AuthRoutes.login,
    widget: const AuthPage(),
  );
}
