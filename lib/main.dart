import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'application/login_form/login_form_bloc.dart';
import 'application/user_list/userlist_bloc.dart';
import 'domain/user_list/repository/i_userList_repository.dart';
import 'infrastructure/login_form/data_source/login_api.dart';
import 'infrastructure/user_list/data_source/userlist_api.dart';
import 'infrastructure/user_list/repository/userlist_repository.dart';
import 'presentation/login_form/login_form_screen.dart';

void main() {
  final dio = Dio();
  final api = UserListApi(dio);
  final repo = UserListRepository(api);
  runApp( MyApp(repo));
}

class MyApp extends StatelessWidget {
  final IUserListRepository repo;

  const MyApp(this.repo ,{super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => LoginFormBloc(loginApi: LoginApi())),
        BlocProvider(create: (_) => UserListBloc(repo)),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter BLoC Login',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(),
          ),
        ),
        home: const LoginFormScreen(),
      ),
    );
  }
}
