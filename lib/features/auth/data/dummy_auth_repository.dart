// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'package:planner/core/domain/entities/user_model.dart';
import 'package:planner/core/domain/repositories/auth_repository.dart';

class DummyAuthRepository implements AuthRepository {
  final StreamController<UserModel?> _userStreamController = StreamController<UserModel?>.broadcast();

  DummyAuthRepository() {
    // _userStreamController.stream.listen((String? currentUser) {
    //   _currentUser = currentUser;
    // });
  }

  @override
  Future<UserModel?> signInWithGoogle() async {
    //await Future<void>.delayed(const Duration(seconds: 3));
    final user = UserModel(name: 'Google User');
    _userStreamController.add(user);
    return user;
  }

  @override
  Stream<UserModel?> authStateChanges() {
    return _userStreamController.stream.map((UserModel? user) {
      return user;
    });
  }

  @override
  Future<UserModel?> signIn(String newUserName) async {
    // await Future<void>.delayed(const Duration(seconds: 2));
    final user = UserModel(name: newUserName);
    _userStreamController.add(user);
    return user;
  }

  @override
  Future<void> signOut() async {
    _userStreamController.add(null);
  }

  void dispose() {
    _userStreamController.close();
  }
}
