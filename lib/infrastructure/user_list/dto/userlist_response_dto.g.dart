// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userlist_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDTOImpl _$$UserDTOImplFromJson(Map<String, dynamic> json) =>
    _$UserDTOImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$$UserDTOImplToJson(_$UserDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
    };
