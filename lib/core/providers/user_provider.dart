import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:planner/core/domain/entities/user_model.dart';
import 'package:planner/core/domain/repositories/auth_repository.dart';

final userStateProdiver = StateNotifierProvider<UserStateNotifier, UserModel?>((ref) {
  return UserStateNotifier(GetIt.I());
});

class UserStateNotifier extends StateNotifier<UserModel?> {
  final AuthRepository _authRepository;

  UserStateNotifier(this._authRepository) : super(UserModel(name: 'Guest'));

  Future<void> loginWithGoogle() async {
    state = await _authRepository.signInWithGoogle();
  }

  Future<void> signIn(String userName) async {
    state = await _authRepository.signIn(userName);
  }

  Stream<UserModel?> authStateChanges() {
    return _authRepository.authStateChanges();
  }

  Future<void> logout() async {
    state = null;
    await _authRepository.signOut();
  }
}
