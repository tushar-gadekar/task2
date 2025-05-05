import '../../../domain/user_list/entity/user_create_update_entity.dart';
import '../../../domain/user_list/entity/userlist_response_entity.dart';
import '../../../domain/user_list/repository/i_userList_repository.dart';
import '../data_source/userlist_api.dart';
import '../dto/user_create_update_dto.dart';
import '../dto/userlist_response_dto.dart';

class UserListRepository implements IUserListRepository {
  final UserListApi api;

  UserListRepository(this.api);

  @override
  Future<List<UserEntity>> fetchUsers() async {
    final data = await api.fetchUsers();
    return data.map((json) => UserDTO.fromJson(json).toDomain()).toList();
  }
  @override
  Future<void> createUser(UserCUEntity user) async {
    await api.createUser(UserCUDTO.fromDomain(user).toJson());
  }

  @override
  Future<void> updateUser(int id, UserCUEntity user) async {
    await api.updateUser(id, UserCUDTO.fromDomain(user).toJson());
  }

  @override
  Future<void> deleteUser(int id) async {
    await api.deleteUser(id);
  }
}
