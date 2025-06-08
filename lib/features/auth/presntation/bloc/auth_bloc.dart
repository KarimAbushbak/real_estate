import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

import '../../data/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  AuthBloc(this.authRepository) : super(AuthInitial()) {
    on<AuthGoogleSignInRequested>((event, emit) async {
      emit(AuthLoading());
      try {
        final user = await authRepository.signInWithGoogle();
        if (user != null) {
          emit(Authenticated(user));
        } else {
          emit(Unauthenticated());
        }
      } catch (e) {
        emit(AuthError(e.toString()));
      }
    });

    on<AuthSignOutRequested>((event, emit) async {
      await authRepository.signOut();
      emit(Unauthenticated());
    });

    on<AuthSignUpRequested>((event, emit) async {
      emit(AuthLoading());
      try {
        UserCredential credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );

        await credential.user!.updateDisplayName(event.name);

        // Save to Firestore
        await _firestore.collection('users').doc(credential.user!.uid).set({
          'uid': credential.user!.uid,
          'name': event.name,
          'email': event.email,
        });

        emit(Authenticated(credential.user!));
      } on FirebaseAuthException catch (e) {
        emit(AuthError(e.message ?? 'Firebase auth error'));
      } catch (e) {
        emit(AuthError('Unexpected error: $e'));
      }
    });
  }
}
