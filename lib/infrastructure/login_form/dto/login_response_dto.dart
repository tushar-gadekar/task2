import 'package:task2/domain/login_form/entity/login_response_entity.dart';

class LoginResponseDto {
  final String token;

  const LoginResponseDto({required this.token});

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) {
    return LoginResponseDto(
      token: json['token'],
    );
  }

  // Convert DTO to Entity
  LoginResponseEntity toEntity() {
    return LoginResponseEntity(token: token);
  }
}
