import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planner/core/providers/user_provider.dart';
import 'package:planner/exemples/others/todo_provider.dart';
import 'package:planner/exemples/others/todo_list_widget.dart';

class TodoPage extends ConsumerWidget {
  const TodoPage({super.key});

  static const String route = '/todo';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          'Todo App for ${ref.watch(userStateProdiver)?.name ?? 'Guest'}',
        ),
      ),
      body: Column(
        children: [
          ref.watch(todoListAsync).when(
                data: (todos) => TodoListWidget(todos: todos),
                loading: CupertinoActivityIndicator.new, //CircularProgressIndicator(),
                error: (e, st) => Text('Error: $e'),
              ),
          ElevatedButton(
              onPressed: () {
                ref.read(userStateProdiver.notifier).signIn('John');
              },
              child: Text('Auth Jonh')),
          ElevatedButton(
              onPressed: () {
                ref.read(userStateProdiver.notifier).logout();
              },
              child: Text('out')),
        ],
      ),
    );
  }
}
