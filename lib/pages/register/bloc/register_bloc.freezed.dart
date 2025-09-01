// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RegisterEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RegisterEvent()';
}


}

/// @nodoc
class $RegisterEventCopyWith<$Res>  {
$RegisterEventCopyWith(RegisterEvent _, $Res Function(RegisterEvent) __);
}


/// Adds pattern-matching-related methods to [RegisterEvent].
extension RegisterEventPatterns on RegisterEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Validate value)?  validate,TResult Function( _Submit value)?  submit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Validate() when validate != null:
return validate(_that);case _Submit() when submit != null:
return submit(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Validate value)  validate,required TResult Function( _Submit value)  submit,}){
final _that = this;
switch (_that) {
case _Validate():
return validate(_that);case _Submit():
return submit(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Validate value)?  validate,TResult? Function( _Submit value)?  submit,}){
final _that = this;
switch (_that) {
case _Validate() when validate != null:
return validate(_that);case _Submit() when submit != null:
return submit(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( TextFieldType type,  String value)?  validate,TResult Function()?  submit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Validate() when validate != null:
return validate(_that.type,_that.value);case _Submit() when submit != null:
return submit();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( TextFieldType type,  String value)  validate,required TResult Function()  submit,}) {final _that = this;
switch (_that) {
case _Validate():
return validate(_that.type,_that.value);case _Submit():
return submit();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( TextFieldType type,  String value)?  validate,TResult? Function()?  submit,}) {final _that = this;
switch (_that) {
case _Validate() when validate != null:
return validate(_that.type,_that.value);case _Submit() when submit != null:
return submit();case _:
  return null;

}
}

}

/// @nodoc


class _Validate with DiagnosticableTreeMixin implements RegisterEvent {
  const _Validate({required this.type, required this.value});
  

 final  TextFieldType type;
 final  String value;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidateCopyWith<_Validate> get copyWith => __$ValidateCopyWithImpl<_Validate>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RegisterEvent.validate'))
    ..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('value', value));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Validate&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,type,value);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RegisterEvent.validate(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ValidateCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory _$ValidateCopyWith(_Validate value, $Res Function(_Validate) _then) = __$ValidateCopyWithImpl;
@useResult
$Res call({
 TextFieldType type, String value
});




}
/// @nodoc
class __$ValidateCopyWithImpl<$Res>
    implements _$ValidateCopyWith<$Res> {
  __$ValidateCopyWithImpl(this._self, this._then);

  final _Validate _self;
  final $Res Function(_Validate) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,Object? value = null,}) {
  return _then(_Validate(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TextFieldType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Submit with DiagnosticableTreeMixin implements RegisterEvent {
  const _Submit();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RegisterEvent.submit'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RegisterEvent.submit()';
}


}




/// @nodoc
mixin _$RegisterState implements DiagnosticableTreeMixin {

 String get name; String get email; String get password; String get repeatPassword; String? get nameError; String? get emailError; String? get passwordError; String? get repeatPasswordError; bool get isSubmitting; bool get isSuccess; String? get submissionError;
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterStateCopyWith<RegisterState> get copyWith => _$RegisterStateCopyWithImpl<RegisterState>(this as RegisterState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RegisterState'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('repeatPassword', repeatPassword))..add(DiagnosticsProperty('nameError', nameError))..add(DiagnosticsProperty('emailError', emailError))..add(DiagnosticsProperty('passwordError', passwordError))..add(DiagnosticsProperty('repeatPasswordError', repeatPasswordError))..add(DiagnosticsProperty('isSubmitting', isSubmitting))..add(DiagnosticsProperty('isSuccess', isSuccess))..add(DiagnosticsProperty('submissionError', submissionError));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.repeatPassword, repeatPassword) || other.repeatPassword == repeatPassword)&&(identical(other.nameError, nameError) || other.nameError == nameError)&&(identical(other.emailError, emailError) || other.emailError == emailError)&&(identical(other.passwordError, passwordError) || other.passwordError == passwordError)&&(identical(other.repeatPasswordError, repeatPasswordError) || other.repeatPasswordError == repeatPasswordError)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.submissionError, submissionError) || other.submissionError == submissionError));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,password,repeatPassword,nameError,emailError,passwordError,repeatPasswordError,isSubmitting,isSuccess,submissionError);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RegisterState(name: $name, email: $email, password: $password, repeatPassword: $repeatPassword, nameError: $nameError, emailError: $emailError, passwordError: $passwordError, repeatPasswordError: $repeatPasswordError, isSubmitting: $isSubmitting, isSuccess: $isSuccess, submissionError: $submissionError)';
}


}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<$Res>  {
  factory $RegisterStateCopyWith(RegisterState value, $Res Function(RegisterState) _then) = _$RegisterStateCopyWithImpl;
@useResult
$Res call({
 String name, String email, String password, String repeatPassword, String? nameError, String? emailError, String? passwordError, String? repeatPasswordError, bool isSubmitting, bool isSuccess, String? submissionError
});




}
/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._self, this._then);

  final RegisterState _self;
  final $Res Function(RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? password = null,Object? repeatPassword = null,Object? nameError = freezed,Object? emailError = freezed,Object? passwordError = freezed,Object? repeatPasswordError = freezed,Object? isSubmitting = null,Object? isSuccess = null,Object? submissionError = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,repeatPassword: null == repeatPassword ? _self.repeatPassword : repeatPassword // ignore: cast_nullable_to_non_nullable
as String,nameError: freezed == nameError ? _self.nameError : nameError // ignore: cast_nullable_to_non_nullable
as String?,emailError: freezed == emailError ? _self.emailError : emailError // ignore: cast_nullable_to_non_nullable
as String?,passwordError: freezed == passwordError ? _self.passwordError : passwordError // ignore: cast_nullable_to_non_nullable
as String?,repeatPasswordError: freezed == repeatPasswordError ? _self.repeatPasswordError : repeatPasswordError // ignore: cast_nullable_to_non_nullable
as String?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,submissionError: freezed == submissionError ? _self.submissionError : submissionError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterState value)  $default,){
final _that = this;
switch (_that) {
case _RegisterState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterState value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String email,  String password,  String repeatPassword,  String? nameError,  String? emailError,  String? passwordError,  String? repeatPasswordError,  bool isSubmitting,  bool isSuccess,  String? submissionError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that.name,_that.email,_that.password,_that.repeatPassword,_that.nameError,_that.emailError,_that.passwordError,_that.repeatPasswordError,_that.isSubmitting,_that.isSuccess,_that.submissionError);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String email,  String password,  String repeatPassword,  String? nameError,  String? emailError,  String? passwordError,  String? repeatPasswordError,  bool isSubmitting,  bool isSuccess,  String? submissionError)  $default,) {final _that = this;
switch (_that) {
case _RegisterState():
return $default(_that.name,_that.email,_that.password,_that.repeatPassword,_that.nameError,_that.emailError,_that.passwordError,_that.repeatPasswordError,_that.isSubmitting,_that.isSuccess,_that.submissionError);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String email,  String password,  String repeatPassword,  String? nameError,  String? emailError,  String? passwordError,  String? repeatPasswordError,  bool isSubmitting,  bool isSuccess,  String? submissionError)?  $default,) {final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that.name,_that.email,_that.password,_that.repeatPassword,_that.nameError,_that.emailError,_that.passwordError,_that.repeatPasswordError,_that.isSubmitting,_that.isSuccess,_that.submissionError);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterState extends RegisterState with DiagnosticableTreeMixin {
  const _RegisterState({this.name = '', this.email = '', this.password = '', this.repeatPassword = '', this.nameError, this.emailError, this.passwordError, this.repeatPasswordError, this.isSubmitting = false, this.isSuccess = false, this.submissionError}): super._();
  

@override@JsonKey() final  String name;
@override@JsonKey() final  String email;
@override@JsonKey() final  String password;
@override@JsonKey() final  String repeatPassword;
@override final  String? nameError;
@override final  String? emailError;
@override final  String? passwordError;
@override final  String? repeatPasswordError;
@override@JsonKey() final  bool isSubmitting;
@override@JsonKey() final  bool isSuccess;
@override final  String? submissionError;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterStateCopyWith<_RegisterState> get copyWith => __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RegisterState'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('repeatPassword', repeatPassword))..add(DiagnosticsProperty('nameError', nameError))..add(DiagnosticsProperty('emailError', emailError))..add(DiagnosticsProperty('passwordError', passwordError))..add(DiagnosticsProperty('repeatPasswordError', repeatPasswordError))..add(DiagnosticsProperty('isSubmitting', isSubmitting))..add(DiagnosticsProperty('isSuccess', isSuccess))..add(DiagnosticsProperty('submissionError', submissionError));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterState&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.repeatPassword, repeatPassword) || other.repeatPassword == repeatPassword)&&(identical(other.nameError, nameError) || other.nameError == nameError)&&(identical(other.emailError, emailError) || other.emailError == emailError)&&(identical(other.passwordError, passwordError) || other.passwordError == passwordError)&&(identical(other.repeatPasswordError, repeatPasswordError) || other.repeatPasswordError == repeatPasswordError)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.submissionError, submissionError) || other.submissionError == submissionError));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,password,repeatPassword,nameError,emailError,passwordError,repeatPasswordError,isSubmitting,isSuccess,submissionError);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RegisterState(name: $name, email: $email, password: $password, repeatPassword: $repeatPassword, nameError: $nameError, emailError: $emailError, passwordError: $passwordError, repeatPasswordError: $repeatPasswordError, isSubmitting: $isSubmitting, isSuccess: $isSuccess, submissionError: $submissionError)';
}


}

/// @nodoc
abstract mixin class _$RegisterStateCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(_RegisterState value, $Res Function(_RegisterState) _then) = __$RegisterStateCopyWithImpl;
@override @useResult
$Res call({
 String name, String email, String password, String repeatPassword, String? nameError, String? emailError, String? passwordError, String? repeatPasswordError, bool isSubmitting, bool isSuccess, String? submissionError
});




}
/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(this._self, this._then);

  final _RegisterState _self;
  final $Res Function(_RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? password = null,Object? repeatPassword = null,Object? nameError = freezed,Object? emailError = freezed,Object? passwordError = freezed,Object? repeatPasswordError = freezed,Object? isSubmitting = null,Object? isSuccess = null,Object? submissionError = freezed,}) {
  return _then(_RegisterState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,repeatPassword: null == repeatPassword ? _self.repeatPassword : repeatPassword // ignore: cast_nullable_to_non_nullable
as String,nameError: freezed == nameError ? _self.nameError : nameError // ignore: cast_nullable_to_non_nullable
as String?,emailError: freezed == emailError ? _self.emailError : emailError // ignore: cast_nullable_to_non_nullable
as String?,passwordError: freezed == passwordError ? _self.passwordError : passwordError // ignore: cast_nullable_to_non_nullable
as String?,repeatPasswordError: freezed == repeatPasswordError ? _self.repeatPasswordError : repeatPasswordError // ignore: cast_nullable_to_non_nullable
as String?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,submissionError: freezed == submissionError ? _self.submissionError : submissionError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
