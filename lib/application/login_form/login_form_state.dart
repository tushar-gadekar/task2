import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form_state.freezed.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    required String email,
    required String password,
    required bool isEmailValid,
    required bool isPasswordValid,
    required bool isSubmitting,
    required String errorMessage,
    required bool isSuccess,
    required bool isFailure,
    required bool showFeedback,
  }) = _LoginFormState;

  factory LoginFormState.initial() => LoginFormState(
    email: '',
    password: '',
    isEmailValid: true,
    isPasswordValid: true,
    isSubmitting: false,
    isSuccess: false,
    isFailure: false, errorMessage: '', showFeedback: false,
  );
}
