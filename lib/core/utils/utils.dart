import 'dart:math';
import 'dart:ui';

class Utils {
  static Future<void> sleep() {
    return Future.delayed(Duration(seconds: 3));
  }

  Color randomColor() {
    return Color(Random().nextInt(0xFFFFFFFF));
  }
}
// return List<TodoModel>.generate(10, (counter) => TodoModel(id: '1', title: 'title', isCompleted: true));
