part of 'login_bloc.dart';

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String email,
    @Default('') String password,
    String? emailError,
    String? passwordError,
    @Default(false) bool isSubmitting,
    @Default(false) bool isSuccess,
    String? submissionError,
  }) = _LoginState;

  const LoginState._();

  bool showError(TextFieldType type) {
    switch (type) {
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
      default:
        return false;
    }
  }

  bool get isFormValid =>
      emailError == null &&
      passwordError == null &&
      email.isNotEmpty &&
      password.isNotEmpty;
}
