import 'package:planner/core/domain/entities/user_model.dart';

abstract class AuthRepository {
  Stream<UserModel?> authStateChanges();
  Future<UserModel?> signIn(String newUserName);
  Future<UserModel?> signInWithGoogle();
  Future<void> signOut();
}
