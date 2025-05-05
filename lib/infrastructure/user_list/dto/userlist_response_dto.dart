import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/user_list/entity/userlist_response_entity.dart';

part 'userlist_response_dto.freezed.dart';
part 'userlist_response_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const factory UserDTO({
    required int id,
    required String email,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String avatar,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  factory UserDTO.fromDomain(UserEntity entity) => UserDTO(
    id: entity.id,
    email: entity.email,
    firstName: entity.firstName,
    lastName: entity.lastName,
    avatar: entity.avatar,
  );
}
extension UserDtoX on UserDTO {
  UserEntity toDomain() {
    return UserEntity(
      id: id,
      email: email,
      firstName: firstName,
      lastName: lastName,
      avatar: avatar,
    );
  }
}