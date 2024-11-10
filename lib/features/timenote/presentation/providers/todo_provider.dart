import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:planner/features/timenote/domain/entities/todo.dart';
import 'package:planner/features/timenote/domain/usecases/get_todos_usecase.dart';

final todoListAsync = FutureProvider.autoDispose<List<Todo>>((ref) {
  return ref.watch(todoPageProvider.notifier).getTodos();
});

final todoPageProvider = StateNotifierProvider.autoDispose<TodoPageViewModel, TodoPageState>((ref) {
  return TodoPageViewModel(GetIt.I());
});

class TodoPageState {
  final List<Todo> todos;

  TodoPageState({required this.todos});

  factory TodoPageState.initial() {
    return TodoPageState(todos: []);
  }

  TodoPageState copyWith({List<Todo>? todos}) {
    return TodoPageState(todos: todos ?? this.todos);
  }
}

class TodoPageViewModel extends StateNotifier<TodoPageState> {
  final GetTodosUseCase _getTodosUseCase;

  TodoPageViewModel(this._getTodosUseCase) : super(TodoPageState.initial()) {
    _setup();
  }

  Future<List<Todo>> getTodos() async {
    final todos = await _getTodosUseCase();

    state = state.copyWith(
      todos: todos,
    );

    return todos;
  }

  void _setup() {
    // getTodos();
  }
}
