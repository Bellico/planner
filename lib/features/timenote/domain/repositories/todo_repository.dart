import 'package:planner/features/timenote/domain/entities/todo.dart';

abstract class TodoRepository {
  Future<List<Todo>> getTodos();
  Stream<List<Todo>> getTodosStream();
  Future<void> addTodo(Todo todo);
}
