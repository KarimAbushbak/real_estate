part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class AuthGoogleSignInRequested extends AuthEvent {}

class AuthSignOutRequested extends AuthEvent {}

