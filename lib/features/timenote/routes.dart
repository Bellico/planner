import 'package:planner/core/models/page_route.dart';
import 'package:planner/features/timenote/presentation/pages/drag_page.dart';
import 'package:planner/features/timenote/presentation/pages/navigation_page.dart';
import 'package:planner/features/timenote/presentation/pages/usage_page.dart';

class TimenoteRoutes {
  static const String dragg = 'dragger';
}

PageRoute registerTimenoteRoutes() {
  return PageRoute(
    path: '/timenote',
    widget: const BottomNavigationBarExample(),
    children: [
      PageRoute(
        path: '/drag',
        name: TimenoteRoutes.dragg,
        widget: const DragPage(),
      ),
      PageRoute(
        path: '/usage',
        widget: const UsagePage(),
      ),
    ],
  );
}
