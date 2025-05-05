import '../entity/user_create_update_entity.dart';
import '../entity/userlist_response_entity.dart';

abstract class IUserListRepository {
  Future<void> createUser(UserCUEntity user);
  Future<void> updateUser(int id, UserCUEntity user);
  Future<void> deleteUser(int id);
  Future<List<UserEntity>> fetchUsers();
}