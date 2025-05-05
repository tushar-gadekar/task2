// import 'package:dio/dio.dart';
// import '../dto/login_response_dto.dart';
//
// class LoginApi {
//   final Dio _dio;
//
//   LoginApi({Dio? dio}) : _dio = dio ?? Dio();
//
//   Future<LoginResponseDto> login({required String email, required String password}) async {
//     try {
//       final response = await _dio.post(
//         'https://reqres.in/api/login',
//         data: {
//           'email': email,
//           'password': password,
//         },
//       );
//
//       if (response.statusCode == 200) {
//         return LoginResponseDto.fromJson(response.data);
//       } else {
//         throw Exception('Failed to login. Status code: ${response.statusCode}');
//       }
//     } on DioException catch (e) {
//       // Handle Dio specific exceptions
//       throw Exception('Dio error: ${e.message}');
//     } catch (e) {
//       throw Exception('Unexpected error: $e');
//     }
//   }
// }
import 'dart:developer';

import 'package:dio/dio.dart';
import '../../exception/login_exception.dart';
import '../dto/login_response_dto.dart';

class LoginApi {
  final Dio _dio;

  LoginApi({Dio? dio}) : _dio = dio ?? Dio();
  Future<LoginResponseDto> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        'https://reqres.in/api/login',
        data: {
          'email': email,
          'password': password,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer reqres-free-v1',
            'x-api-key': 'reqres-free-v1',
          },
          validateStatus: (status) => status != null && status < 500,
        ),
      );
      // log("Tushar + ${response.toString()}");

      if (response.statusCode == 200) {
        return LoginResponseDto.fromJson(response.data);
      } else if (response.statusCode == 401) {
        throw LoginException('Invalid email or password');
      } else {
        throw LoginException('Login failed. Status code: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw LoginException('Network error: ${e.message}');
    } catch (e) {
      throw LoginException('Error: $e');
    }
  }

}
