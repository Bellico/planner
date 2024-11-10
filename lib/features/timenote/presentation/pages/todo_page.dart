import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planner/features/timenote/presentation/providers/todo_provider.dart';
import 'package:planner/features/timenote/presentation/widgets/todo_list_widget.dart';

class TodoPage extends ConsumerWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(title: Text('Todo App')),
      body: ref.watch(todoListAsync).when(
            data: (todos) => TodoListWidget(todos: todos),
            loading: CupertinoActivityIndicator.new, //CircularProgressIndicator(),
            error: (e, st) => Text('Error: $e'),
          ),
    );
  }
}
