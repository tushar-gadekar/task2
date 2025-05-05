import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/presentation/login_form/widget/email_field.dart';
import 'package:task2/presentation/login_form/widget/login_button.dart';
import 'package:task2/presentation/login_form/widget/password_field.dart';
import '../../application/login_form/login_form_bloc.dart';
import '../../application/login_form/login_form_event.dart';
import '../../application/login_form/login_form_state.dart';
import '../core/snackbar/custom_snackbar.dart';

class LoginFormScreen extends StatelessWidget {
  const LoginFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Form'),centerTitle: true,backgroundColor: Colors.grey[400],),
      body: BlocListener<LoginFormBloc, LoginFormState>(
        listenWhen: (previous, current) => current.showFeedback,
        listener: (context, state) {
          if(state.isFailure){
            showCustomSnackbar(context,'${state.errorMessage}',Colors.red);
          } else if (state.isSuccess) {
            showCustomSnackbar(context, 'LOGIN SUCCESSFULLY                                                Email: ${state.email}, Password: ${state.password}',Colors.green);
          }
          //t the feedback flag so snackbar won't show again
              context.read<LoginFormBloc>().add(LoginFormEvent.resetFeedback());
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: const [
              SizedBox(height: 36),
              EmailField(),
              SizedBox(height: 16),
              PasswordField(),
              SizedBox(height: 25),
              LoginButton(),
            ],
          ),
        ),
      ),
    );
  }
}