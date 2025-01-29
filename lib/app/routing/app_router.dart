import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:planner/app/routing/routes.dart';
import 'package:planner/core/providers/user_provider.dart';
import 'package:planner/features/timenote/presentation/pages/month_page.dart';

final appRouterProvider = Provider.autoDispose<GoRouter>((ref) {
  final isAuth = ValueNotifier<AsyncValue<bool>>(const AsyncLoading());

  ref
    ..onDispose(isAuth.dispose)
    ..listen(userStateProdiver, (_, next) {
      isAuth.value = AsyncData(next != null);
    });

  return GoRouter(
    initialLocation: AppRouter.initialLocation,
    refreshListenable: isAuth,
    routes: AppRouter.routes,

    // Redirect rules
    redirect: (BuildContext context, GoRouterState state) async {
      if (isAuth.value.isLoading || !isAuth.value.hasValue) return '/auth';
      final isLoggedIn = isAuth.value.requireValue;
      final bool loggingIn = state.matchedLocation == '/auth';
      // print(state.matchedLocation);
      // print(state.uri.path);
      if (!isLoggedIn) return '/auth';
      if (loggingIn) return TimeMonthPage.route;
      // no need to redirect at all
      return null;
    },
  );
});
