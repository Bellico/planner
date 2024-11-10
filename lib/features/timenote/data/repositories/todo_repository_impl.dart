import 'package:planner/features/timenote/data/datasources/firestore_todo_data_source.dart';
import 'package:planner/features/timenote/data/models/todo_model.dart';
import 'package:planner/features/timenote/domain/entities/todo.dart';
import 'package:planner/features/timenote/domain/repositories/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final FirestoreTodoDataSource dataSource;

  TodoRepositoryImpl(this.dataSource);

  @override
  Future<List<Todo>> getTodos() {
    return dataSource.getTodos().then((value) => value.map((e) => e.toEntity()).toList());
  }

  @override
  Stream<List<Todo>> getTodosStream() {
    return dataSource.getTodosStream().asyncMap((value) => value.map((e) => e.toEntity()).toList());
  }

  @override
  Future<void> addTodo(Todo todo) async {
    await dataSource.addTodo(TodoModel.fromEntity(todo));
  }
}
