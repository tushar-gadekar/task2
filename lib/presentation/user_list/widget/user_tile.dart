import 'package:flutter/material.dart';
import '../../../domain/user_list/entity/userlist_response_entity.dart';

class UserTile extends StatelessWidget {
  final UserEntity user;

  const UserTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(user.avatar)),
      title: Text('${user.firstName} ${user.lastName}'),
      subtitle: Text(user.email),
    );
  }
}
