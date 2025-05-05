import 'package:dio/dio.dart';

class UserListApi {
  final Dio _dio;

  UserListApi(this._dio);

  Future<List<Map<String, dynamic>>> fetchUsers() async {
    final response = await _dio.get('https://reqres.in/api/users?page=2');
    return List<Map<String, dynamic>>.from(response.data['data']);
  }
  Future<void> createUser(Map<String, dynamic> user) async {
    await _dio.post('https://reqres.in/api/users', data: user);
  }

  Future<void> updateUser(int id, Map<String, dynamic> user) async {
    await _dio.put('https://reqres.in/api/users/$id', data: user);
  }

  Future<void> deleteUser(int id) async {
    await _dio.delete('https://reqres.in/api/users/$id');
  }
}
