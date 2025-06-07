import 'package:flutter_bloc/flutter_bloc.dart';

// States
abstract class OnboardingState {}

class OnboardingInitial extends OnboardingState {}

class OnboardingPageChanged extends OnboardingState {
  final int index;

  OnboardingPageChanged(this.index);
}

class OnboardingCompleted extends OnboardingState {}

// Events
abstract class OnboardingEvent {}

class UpdateIndexEvent extends OnboardingEvent {
  final int index;

  UpdateIndexEvent(this.index);
}

class SkipOnboardingEvent extends OnboardingEvent {
  final int lastIndex;

  SkipOnboardingEvent(this.lastIndex);
}

class NextPageEvent extends OnboardingEvent {
  final int currentIndex;
  final int totalPages;

  NextPageEvent(this.currentIndex, this.totalPages);
}

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingPageChanged(0));

  void updateIndex(int index) {
    emit(OnboardingPageChanged(index));
  }

  void skipOnboarding(int lastIndex) {
    Future.delayed(const Duration(milliseconds: 50), () {
      emit(OnboardingPageChanged(lastIndex));
    });
  }

  void nextPage(int currentIndex, int totalPages) {
    if (currentIndex < totalPages - 1) {
      emit(OnboardingPageChanged(currentIndex + 1));
    } else {
      emit(OnboardingCompleted());
    }
  }
}
