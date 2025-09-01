part of 'register_bloc.dart';

@freezed
sealed class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.validate({
    required TextFieldType type,
    required String value,
  }) = _Validate;

  const factory RegisterEvent.submit() = _Submit;
}
