import 'dart:developer' as developer;

import 'package:awesome_financial_control/models/form.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<_Validate>(_onValidate);
    on<_Submit>(_onSubmit);
  }
  void _onValidate(_Validate event, Emitter<LoginState> emit) {
    developer.log("Validating ${event.type} with value: ${event.value}");
    developer.log("Current State $state");

    var newState = state;

    switch (event.type) {
      case TextFieldType.email:
        newState = state.copyWith(
          email: event.value,
          emailError: Validators.validateEmail(event.value),
        );
        break;
      case TextFieldType.password:
        newState = state.copyWith(
          password: event.value,
          passwordError: Validators.validatePassword(event.value),
        );
        break;
      default:
        break;
    }

    emit(newState);
  }

  Future<void> _onSubmit(_Submit event, Emitter<LoginState> emit) async {
    final emailError = Validators.validateEmail(state.email);
    final passwordError = Validators.validatePassword(state.password);

    final finalState = state.copyWith(
      emailError: emailError,
      passwordError: passwordError,
    );

    emit(finalState);

    if (finalState.isFormValid) {
      emit(state.copyWith(isSubmitting: true, submissionError: null));
      try {
        await Future.delayed(const Duration(seconds: 2));
        developer.log('Submission successful!');
        emit(state.copyWith(isSubmitting: false, isSuccess: true));
      } catch (e) {
        emit(
          state.copyWith(
            isSubmitting: false,
            submissionError: 'An unknown error occurred.',
          ),
        );
      }
    } else {
      developer.log('Submission failed: Form is not valid.');
    }
  }
}
