import 'package:awesome_financial_control/models/form.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:developer' as developer;

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState()) {
    on<_Validate>(_onValidate);
    on<_Submit>(_onSubmit);
  }
  void _onValidate(_Validate event, Emitter<RegisterState> emit) {
    developer.log("Validating ${event.type} with value: ${event.value}");
    developer.log("Current State $state");

    var newState = state;

    switch (event.type) {
      case TextFieldType.name:
        newState = state.copyWith(
          name: event.value,
          nameError: Validators.validateName(event.value),
        );
        break;
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
          repeatPasswordError: state.repeatPassword.isNotEmpty
              ? Validators.validateRepeatPassword(
                  state.repeatPassword,
                  event.value,
                )
              : state.repeatPasswordError,
        );
        break;
      case TextFieldType.repeatPassword:
        newState = state.copyWith(
          repeatPassword: event.value,
          repeatPasswordError: Validators.validateRepeatPassword(
            event.value,
            state.password,
          ),
        );
        break;
    }

    emit(newState);
  }

  Future<void> _onSubmit(_Submit event, Emitter<RegisterState> emit) async {
    final nameError = Validators.validateName(state.name);
    final emailError = Validators.validateEmail(state.email);
    final passwordError = Validators.validatePassword(state.password);
    final repeatPasswordError = Validators.validateRepeatPassword(
      state.repeatPassword,
      state.password,
    );

    final finalState = state.copyWith(
      nameError: nameError,
      emailError: emailError,
      passwordError: passwordError,
      repeatPasswordError: repeatPasswordError,
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
