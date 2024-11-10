import 'package:planner/features/timenote/domain/entities/todo.dart';
import 'package:planner/features/timenote/domain/repositories/todo_repository.dart';

class GetTodosUseCase {
  final TodoRepository repository;

  const GetTodosUseCase(this.repository);

  Future<List<Todo>> call() {
    return repository.getTodos();
  }
}

class GetTodosUseCaseStream {
  final TodoRepository repository;

  GetTodosUseCaseStream(this.repository);

  Stream<List<Todo>> call() {
    return repository.getTodosStream();
  }
}
