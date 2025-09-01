part of 'register_bloc.dart';

@freezed
sealed class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default('') String name,
    @Default('') String email,
    @Default('') String password,
    @Default('') String repeatPassword,
    String? nameError,
    String? emailError,
    String? passwordError,
    String? repeatPasswordError,
    @Default(false) bool isSubmitting,
    @Default(false) bool isSuccess,
    String? submissionError,
  }) = _RegisterState;

  const RegisterState._();

  bool showError(TextFieldType type) {
    switch (type) {
      case TextFieldType.name:
        return (nameError != null)
            ? nameError!.isNotEmpty
                  ? true
                  : false
            : false;
      case TextFieldType.email:
        return (emailError != null)
            ? emailError!.isNotEmpty
                  ? true
                  : false
            : false;
      case TextFieldType.password:
        return (passwordError != null)
            ? passwordError!.isNotEmpty
                  ? true
                  : false
            : false;
      case TextFieldType.repeatPassword:
        return (repeatPasswordError != null)
            ? repeatPasswordError!.isNotEmpty
                  ? true
                  : false
            : false;
    }
  }

  bool get isFormValid =>
      nameError == null &&
      emailError == null &&
      passwordError == null &&
      repeatPasswordError == null &&
      name.isNotEmpty &&
      email.isNotEmpty &&
      password.isNotEmpty &&
      repeatPassword.isNotEmpty;
}
