part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class AuthGoogleSignInRequested extends AuthEvent {}

class AuthSignOutRequested extends AuthEvent {}

class AuthSignUpRequested extends AuthEvent {
  final String name;
  final String email;
  final String password;

  AuthSignUpRequested({
    required this.name,
    required this.email,
    required this.password,
  });
}
