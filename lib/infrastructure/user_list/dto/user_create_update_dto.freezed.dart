// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_create_update_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserCUDTO _$UserCUDTOFromJson(Map<String, dynamic> json) {
  return _UserCUDTO.fromJson(json);
}

/// @nodoc
mixin _$UserCUDTO {
  String get name => throw _privateConstructorUsedError;
  String get job => throw _privateConstructorUsedError;

  /// Serializes this UserCUDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserCUDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCUDTOCopyWith<UserCUDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCUDTOCopyWith<$Res> {
  factory $UserCUDTOCopyWith(UserCUDTO value, $Res Function(UserCUDTO) then) =
      _$UserCUDTOCopyWithImpl<$Res, UserCUDTO>;
  @useResult
  $Res call({String name, String job});
}

/// @nodoc
class _$UserCUDTOCopyWithImpl<$Res, $Val extends UserCUDTO>
    implements $UserCUDTOCopyWith<$Res> {
  _$UserCUDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCUDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? job = null}) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            job:
                null == job
                    ? _value.job
                    : job // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserCUDTOImplCopyWith<$Res>
    implements $UserCUDTOCopyWith<$Res> {
  factory _$$UserCUDTOImplCopyWith(
    _$UserCUDTOImpl value,
    $Res Function(_$UserCUDTOImpl) then,
  ) = __$$UserCUDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String job});
}

/// @nodoc
class __$$UserCUDTOImplCopyWithImpl<$Res>
    extends _$UserCUDTOCopyWithImpl<$Res, _$UserCUDTOImpl>
    implements _$$UserCUDTOImplCopyWith<$Res> {
  __$$UserCUDTOImplCopyWithImpl(
    _$UserCUDTOImpl _value,
    $Res Function(_$UserCUDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserCUDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? job = null}) {
    return _then(
      _$UserCUDTOImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        job:
            null == job
                ? _value.job
                : job // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCUDTOImpl implements _UserCUDTO {
  const _$UserCUDTOImpl({required this.name, required this.job});

  factory _$UserCUDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCUDTOImplFromJson(json);

  @override
  final String name;
  @override
  final String job;

  @override
  String toString() {
    return 'UserCUDTO(name: $name, job: $job)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCUDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.job, job) || other.job == job));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, job);

  /// Create a copy of UserCUDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCUDTOImplCopyWith<_$UserCUDTOImpl> get copyWith =>
      __$$UserCUDTOImplCopyWithImpl<_$UserCUDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCUDTOImplToJson(this);
  }
}

abstract class _UserCUDTO implements UserCUDTO {
  const factory _UserCUDTO({
    required final String name,
    required final String job,
  }) = _$UserCUDTOImpl;

  factory _UserCUDTO.fromJson(Map<String, dynamic> json) =
      _$UserCUDTOImpl.fromJson;

  @override
  String get name;
  @override
  String get job;

  /// Create a copy of UserCUDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCUDTOImplCopyWith<_$UserCUDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
