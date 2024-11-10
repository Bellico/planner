import 'package:get_it/get_it.dart';
import 'package:planner/features/timenote/data/datasources/firestore_todo_data_source.dart';
import 'package:planner/features/timenote/data/repositories/todo_repository_impl.dart';
import 'package:planner/features/timenote/domain/repositories/todo_repository.dart';
import 'package:planner/features/timenote/domain/usecases/get_todos_usecase.dart';

extension DependenciesExtensions on GetIt {
  void registerTimenoteDependencies() {
    // Data sources
    registerLazySingleton(() => FirestoreTodoDataSource(this()));

    // Repositories
    registerLazySingleton<TodoRepository>(() => TodoRepositoryImpl(this()));

    // Use Cases
    registerLazySingleton(() => GetTodosUseCase(this()));
    registerLazySingleton(() => GetTodosUseCaseStream(this()));
  }
}
