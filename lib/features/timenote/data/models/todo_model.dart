import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:planner/features/timenote/domain/entities/todo.dart';

class TodoModel {
  final String id;
  final String title;
  final bool isCompleted;

  TodoModel({
    required this.id,
    required this.title,
    required this.isCompleted,
  });

  factory TodoModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return TodoModel(
      id: doc.id,
      title: data['title'].toString(),
      isCompleted: data['isCompleted'] == 'true' ? true : false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isCompleted': isCompleted,
    };
  }

  // Conversion TodoModel vers Todo (domaine)
  Todo toEntity() {
    return Todo(
      id: id,
      title: title,
      isCompleted: isCompleted,
    );
  }

  // Conversion Todo (domaine) vers TodoModel
  factory TodoModel.fromEntity(Todo todo) {
    return TodoModel(
      id: todo.id,
      title: todo.title,
      isCompleted: todo.isCompleted,
    );
  }
}
