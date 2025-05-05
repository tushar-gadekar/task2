import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/presentation/user_list/user_list_screen.dart';
import '../../../application/login_form/login_form_bloc.dart';
import '../../../application/login_form/login_form_event.dart';
import '../../../application/login_form/login_form_state.dart';
import '../../core/button/custom_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      builder: (context, state) {
        return CustomButton(
          label: 'Login',
          onPressed: !state.isSubmitting
              ? () {
            context.read<LoginFormBloc>().add(
                const LoginFormEvent.loginSubmitted());
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const UserListScreen()),);
          } : null,
        );
      },
    );
  }
}
