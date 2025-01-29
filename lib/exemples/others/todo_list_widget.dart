import 'package:flutter/material.dart';
import 'package:planner/features/timenote/domain/entities/todo.dart';

class TodoListWidget extends StatelessWidget {
  final List<Todo> todos;

  const TodoListWidget({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final todo = todos[index];
          return ListTile(
            title: Text(todo.title),
            onTap: () => {},
            trailing: Icon(
              todo.isCompleted ? Icons.check_box : Icons.check_box_outline_blank,
            ),
          );
        },
      ),
    );
  }
}
