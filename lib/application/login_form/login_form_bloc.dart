// import 'dart:async';
// import 'dart:developer';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../presentation/core/debouncer/debouncer.dart';
// import 'login_form_event.dart';
// import 'login_form_state.dart';
//
// class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
//   LoginFormBloc() : super(LoginFormState.initial()) {
//     on<EmailChanged>((event, emit)async{
//       final isValid = _validateEmail(event.email);
//       emit(state.copyWith(email: event.email, isEmailValid: isValid));
//       log("${event.email}");
//     },
//       transformer: debounce(Duration(milliseconds: 1000)),
//     );
//     on<PasswordChanged>((event, emit) {
//       final isValid = _validatePassword(event.password);
//       emit(state.copyWith(password: event.password, isPasswordValid: isValid));
//     },
//         transformer: debounce(Duration(milliseconds: 1000)),
//     );
//     on<LoginSubmitted>((event, emit) async {
//       if (state.isEmailValid && state.isPasswordValid) {
//         emit(state.copyWith(isSubmitting: true, isSuccess: false));
//         await Future.delayed(Duration(seconds: 1));
//         emit(state.copyWith(isSubmitting: false, isSuccess: true));
//         await Future.delayed(Duration(milliseconds: 100));
//         emit(state.copyWith(isSuccess: false)); // Reset success after showing
//       }
//     });
//   }
//
//   bool _validateEmail(String email) =>
//       RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$").hasMatch(email);
//
//   // RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}").hasMatch(email);
//
//   bool _validatePassword(String password) => password.length >= 6;
// }

// Updated LoginFormBloc to remove RegExp validation and rely on API response

// import 'dart:async';
// import 'dart:developer';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../infrastructure/login_form/data_source/login_api.dart';
// import 'login_form_event.dart';
// import 'login_form_state.dart';
// import '../../presentation/core/debouncer/debouncer.dart';
//
// class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
//   final LoginApi loginApi;
//
//   LoginFormBloc({required this.loginApi}) : super(LoginFormState.initial()) {
//     on<EmailChanged>(_onEmailChanged, transformer: debounce(Duration(milliseconds: 1000)));
//     on<PasswordChanged>(_onPasswordChanged, transformer: debounce(Duration(milliseconds: 1000)));
//     on<LoginSubmitted>(_onLoginSubmitted);
//     on<StoreToken>(_onStoreToken);
//   }
//
//   void _onEmailChanged(EmailChanged event, Emitter<LoginFormState> emit) {
//     emit(state.copyWith(email: event.email));
//   }
//
//   void _onPasswordChanged(PasswordChanged event, Emitter<LoginFormState> emit) {
//     emit(state.copyWith(password: event.password));
//   }
//
//   Future<void> _onLoginSubmitted(LoginSubmitted event, Emitter<LoginFormState> emit) async {
//     emit(state.copyWith(isSubmitting: true, isFailure: false, isSuccess: false));
//     try {
//       final dto = await loginApi.login(email: state.email, password: state.password);
//       final entity = dto.toEntity();
//       emit(state.copyWith(isSubmitting: false, isSuccess: true));
//       add(LoginFormEvent.storeToken(entity.token));
//     } catch (e) {
//       log('Login error: $e');
//       emit(state.copyWith(isSubmitting: false, isFailure: true));
//     }
//   }
//
//   void _onStoreToken(StoreToken event, Emitter<LoginFormState> emit) {
//     log('Token stored: ${event.token}');
//     // You could add SharedPreferences or secure storage logic here
//   }
// }
import 'dart:async';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/infrastructure/exception/login_exception.dart';
import '../../infrastructure/login_form/data_source/login_api.dart';
import '../../presentation/core/debouncer/debouncer.dart';
import '../../presentation/core/snackbar/custom_snackbar.dart';
import 'login_form_event.dart';
import 'login_form_state.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final LoginApi loginApi;

  LoginFormBloc({required this.loginApi}) : super(LoginFormState.initial()) {
    on<EmailChanged>(_onEmailChanged, transformer: debounce(const Duration(milliseconds: 1000)));
    on<PasswordChanged>(_onPasswordChanged, transformer: debounce(const Duration(milliseconds: 1000)));
    on<LoginSubmitted>(_onLoginSubmitted);
    on<StoreToken>(_onStoreToken);
    on<ResetFeedback>((event, emit) {
      emit(state.copyWith(showFeedback: false));
    });

  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginFormState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginFormState> emit) {
    emit(state.copyWith(password: event.password));
  }

  // Future<void> _onLoginSubmitted(LoginSubmitted event, Emitter<LoginFormState> emit) async {
  //   emit(state.copyWith(isSubmitting: true, isFailure: false, isSuccess: false, errorMessage: ''));
  //
  //   try {
  //     final dto = await loginApi.login(email: state.email, password: state.password);
  //     final entity = dto.toEntity();
  //
  //     emit(state.copyWith(isSubmitting: false, isSuccess: true));
  //     add(LoginFormEvent.storeToken(entity.token));
  //   } on LoginException catch (e) {
  //     log('Login error: $e');
  //     emit(state.copyWith(
  //       isSubmitting: false,
  //       isFailure: true,
  //       errorMessage: e.toString().replaceFirst('Exception: ', ''),
  //     ));
  //   }
  // }
  Future<void> _onLoginSubmitted(LoginSubmitted event, Emitter<LoginFormState> emit) async {

    // emit(state.copyWith(isFailure: false, errorMessage: ''));
    // Check if both email and password are valid before submitting
    if (state.email.isEmpty || state.password.isEmpty) {
      emit(state.copyWith(
        isSubmitting: false,
        isFailure: true,
        errorMessage: 'Please fill in both fields.',
        showFeedback: true,
      ));
      return;
    }

    emit(state.copyWith(isSubmitting: true, isFailure: false, isSuccess: false, errorMessage: '' ,showFeedback: false,));

    try {
      final dto = await loginApi.login(email: state.email, password: state.password);
      final entity = dto.toEntity();

      emit(state.copyWith(isSubmitting: false, isSuccess: true, showFeedback: true,));
      add(LoginFormEvent.storeToken(entity.token));
    } on LoginException catch (e) {
      log('Login error: $e');
      emit(state.copyWith(
        isSubmitting: false,
        isFailure: true,
        errorMessage: e.toString().replaceFirst('Exception: ', ''), showFeedback: true,
      ));
    }
  }


  void _onStoreToken(StoreToken event, Emitter<LoginFormState> emit) {
    log('Token stored: ${event.token}');
    // Store token using SharedPreferences or secure storage
  }
}

