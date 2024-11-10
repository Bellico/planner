import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:planner/core/utils/utils.dart';
import 'package:planner/features/timenote/data/models/todo_model.dart';

class FirestoreTodoDataSource {
  final FirebaseFirestore firestore;

  const FirestoreTodoDataSource(this.firestore);

  Future<List<TodoModel>> getTodos() async {
    final snapshot = await firestore.collection('todos').get();
    await Utils.sleep();
    return snapshot.docs.map(TodoModel.fromFirestore).toList();
  }

  Stream<List<TodoModel>> getTodosStream() {
    return firestore.collection('todos').snapshots().map((snapshot) {
      return snapshot.docs.map(TodoModel.fromFirestore).toList();
    });
  }

  Future<void> addTodo(TodoModel todo) async {
    await firestore.collection('todos').add(todo.toMap());
  }
}
