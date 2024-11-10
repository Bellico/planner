import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class PageRoute {
  String path;
  Widget widget;
  String? name;
  List<PageRoute>? children;

  PageRoute({
    required this.path,
    required this.widget,
    this.name,
    this.children,
  });

  GoRoute toGoRoute() {
    return GoRoute(
      path: path,
      name: name,
      builder: (context, state) => widget,
      routes: children != null ? children!.map((e) => e.toGoRoute()).toList() : [],
    );
  }
}
