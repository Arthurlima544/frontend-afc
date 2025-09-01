part of 'login_bloc.dart';

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.validate({
    required TextFieldType type,
    required String value,
  }) = _Validate;

  const factory LoginEvent.submit() = _Submit;
}
