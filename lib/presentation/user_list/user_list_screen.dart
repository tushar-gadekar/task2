import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/user_list/userlist_bloc.dart';
import '../../application/user_list/userlist_event.dart';
import '../../application/user_list/userlist_state.dart';
import 'widget/user_tile.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User List')),
      body: BlocBuilder<UserListBloc, UserListState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Press button to load')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (users) => ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) => UserTile(user: users[index]),
            ),
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<UserListBloc>().add(const UserListEvent.fetchUsers()),
        child: const Icon(Icons.download),
      ),
    );
  }
}
