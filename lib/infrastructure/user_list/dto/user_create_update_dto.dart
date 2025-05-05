import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/user_list/entity/user_create_update_entity.dart';

part 'user_create_update_dto.freezed.dart';
part 'user_create_update_dto.g.dart';

@freezed
class UserCUDTO with _$UserCUDTO {
  const factory UserCUDTO({required String name, required String job}) = _UserCUDTO;

  factory UserCUDTO.fromJson(Map<String, dynamic> json) => _$UserCUDTOFromJson(json);

  factory UserCUDTO.fromDomain(UserCUEntity entity) => UserCUDTO(name: entity.name, job: entity.job);
}