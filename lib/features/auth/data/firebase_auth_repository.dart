import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:planner/core/domain/entities/user_model.dart';
import 'package:planner/core/domain/repositories/auth_repository.dart';

class FirebaseAuthRepository implements AuthRepository {
  final FirebaseAuth firebaseAuth;

  FirebaseAuthRepository(this.firebaseAuth);

  @override
  Future<UserModel?> signInWithGoogle() async {
    final user = await GoogleSignIn().signIn();
    if (user == null) return null;

    final googleAuth = await user.authentication;
    final credencial = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    await firebaseAuth.signInWithCredential(credencial);

    return UserModel(name: user.displayName);
  }

  @override
  Stream<UserModel?> authStateChanges() {
    return firebaseAuth.authStateChanges().map((User? user) {
      return user != null ? UserModel(name: user.displayName) : null;
    });
  }

  @override
  Future<UserModel?> signIn(String newUserName) {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }
}
