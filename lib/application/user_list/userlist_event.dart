import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/user_list/entity/user_create_update_entity.dart';

part 'userlist_event.freezed.dart';

@freezed
class UserListEvent with _$UserListEvent {
  const factory UserListEvent.fetchUsers() = _FetchUsers;
  const factory UserListEvent.createUser(UserCUEntity user) = _CreateUser;
  const factory UserListEvent.updateUser(int id, UserCUEntity user) = _UpdateUser;
  const factory UserListEvent.deleteUser(int id) = _DeleteUser;
}
