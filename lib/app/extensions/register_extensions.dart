import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:planner/core/domain/repositories/auth_repository.dart';
import 'package:planner/features/auth/data/dummy_auth_repository.dart';
import 'package:planner/features/timenote/data/datasources/firestore_todo_data_source.dart';
import 'package:planner/features/timenote/data/repositories/todo_repository_impl.dart';
import 'package:planner/features/timenote/domain/repositories/todo_repository.dart';
import 'package:planner/features/timenote/domain/usecases/get_todos_usecase.dart';

extension CoreDependenciesExtensions on GetIt {
  void registerDependencies() {
    registerCoreDependencies();
    registerAuthDependencies();
    registerTimenoteDependencies();
  }

  // Core
  void registerCoreDependencies() {
    registerLazySingleton(() => FirebaseFirestore.instance);
    registerLazySingleton(() => FirebaseAuth.instance);
  }

  // Auth
  void registerAuthDependencies() {
    //registerLazySingleton<AuthRepository>(() => FirebaseAuthRepository(this()));
    registerLazySingleton<AuthRepository>(DummyAuthRepository.new);
  }

  // Timenote
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
