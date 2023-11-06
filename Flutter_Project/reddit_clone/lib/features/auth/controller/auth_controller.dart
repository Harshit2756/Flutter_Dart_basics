import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone/features/auth/repository/auth_repository.dart';

// . we will not use auth controller like this as this will have to create a new object of the class every time a user signs in
// AuthController authController = AuthController();
// authController.signInWithGoogle();

final authControllerProvider = Provider<AuthController>(
  (ref) => AuthController(
    authRepository: ref.read(authRespositoryProvider),
  ),
);

class AuthController {
  final AuthRespository _authRepository;
  AuthController({required AuthRespository authRepository})
      : _authRepository = authRepository;

  void signInWithGoogle() async {
    _authRepository.signInWithGoogle();
  }
}
