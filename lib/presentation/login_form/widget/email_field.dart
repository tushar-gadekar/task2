import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/login_form/login_form_bloc.dart';
import '../../../application/login_form/login_form_event.dart';
import '../../../application/login_form/login_form_state.dart';
import '../../core/text_input/custom_text_form_filed.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      builder: (context, state) {
        return CustomTextFormField(
          labelText: 'Email',
          errorText: state.isEmailValid ? null : 'Invalid email format',
          onChanged: (value) => context.read<LoginFormBloc>().add(LoginFormEvent.emailChanged(value)),
        );
      },
    );
  }
}