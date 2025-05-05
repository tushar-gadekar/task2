// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'userlist_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UserListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsers,
    required TResult Function(UserCUEntity user) createUser,
    required TResult Function(int id, UserCUEntity user) updateUser,
    required TResult Function(int id) deleteUser,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsers,
    TResult? Function(UserCUEntity user)? createUser,
    TResult? Function(int id, UserCUEntity user)? updateUser,
    TResult? Function(int id)? deleteUser,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsers,
    TResult Function(UserCUEntity user)? createUser,
    TResult Function(int id, UserCUEntity user)? updateUser,
    TResult Function(int id)? deleteUser,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_DeleteUser value) deleteUser,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUsers value)? fetchUsers,
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListEventCopyWith<$Res> {
  factory $UserListEventCopyWith(
    UserListEvent value,
    $Res Function(UserListEvent) then,
  ) = _$UserListEventCopyWithImpl<$Res, UserListEvent>;
}

/// @nodoc
class _$UserListEventCopyWithImpl<$Res, $Val extends UserListEvent>
    implements $UserListEventCopyWith<$Res> {
  _$UserListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchUsersImplCopyWith<$Res> {
  factory _$$FetchUsersImplCopyWith(
    _$FetchUsersImpl value,
    $Res Function(_$FetchUsersImpl) then,
  ) = __$$FetchUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchUsersImplCopyWithImpl<$Res>
    extends _$UserListEventCopyWithImpl<$Res, _$FetchUsersImpl>
    implements _$$FetchUsersImplCopyWith<$Res> {
  __$$FetchUsersImplCopyWithImpl(
    _$FetchUsersImpl _value,
    $Res Function(_$FetchUsersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchUsersImpl implements _FetchUsers {
  const _$FetchUsersImpl();

  @override
  String toString() {
    return 'UserListEvent.fetchUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsers,
    required TResult Function(UserCUEntity user) createUser,
    required TResult Function(int id, UserCUEntity user) updateUser,
    required TResult Function(int id) deleteUser,
  }) {
    return fetchUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsers,
    TResult? Function(UserCUEntity user)? createUser,
    TResult? Function(int id, UserCUEntity user)? updateUser,
    TResult? Function(int id)? deleteUser,
  }) {
    return fetchUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsers,
    TResult Function(UserCUEntity user)? createUser,
    TResult Function(int id, UserCUEntity user)? updateUser,
    TResult Function(int id)? deleteUser,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_DeleteUser value) deleteUser,
  }) {
    return fetchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUsers value)? fetchUsers,
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) {
    return fetchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers(this);
    }
    return orElse();
  }
}

abstract class _FetchUsers implements UserListEvent {
  const factory _FetchUsers() = _$FetchUsersImpl;
}

/// @nodoc
abstract class _$$CreateUserImplCopyWith<$Res> {
  factory _$$CreateUserImplCopyWith(
    _$CreateUserImpl value,
    $Res Function(_$CreateUserImpl) then,
  ) = __$$CreateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCUEntity user});
}

/// @nodoc
class __$$CreateUserImplCopyWithImpl<$Res>
    extends _$UserListEventCopyWithImpl<$Res, _$CreateUserImpl>
    implements _$$CreateUserImplCopyWith<$Res> {
  __$$CreateUserImplCopyWithImpl(
    _$CreateUserImpl _value,
    $Res Function(_$CreateUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null}) {
    return _then(
      _$CreateUserImpl(
        null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                as UserCUEntity,
      ),
    );
  }
}

/// @nodoc

class _$CreateUserImpl implements _CreateUser {
  const _$CreateUserImpl(this.user);

  @override
  final UserCUEntity user;

  @override
  String toString() {
    return 'UserListEvent.createUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserImplCopyWith<_$CreateUserImpl> get copyWith =>
      __$$CreateUserImplCopyWithImpl<_$CreateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsers,
    required TResult Function(UserCUEntity user) createUser,
    required TResult Function(int id, UserCUEntity user) updateUser,
    required TResult Function(int id) deleteUser,
  }) {
    return createUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsers,
    TResult? Function(UserCUEntity user)? createUser,
    TResult? Function(int id, UserCUEntity user)? updateUser,
    TResult? Function(int id)? deleteUser,
  }) {
    return createUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsers,
    TResult Function(UserCUEntity user)? createUser,
    TResult Function(int id, UserCUEntity user)? updateUser,
    TResult Function(int id)? deleteUser,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_DeleteUser value) deleteUser,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUsers value)? fetchUsers,
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) {
    return createUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(this);
    }
    return orElse();
  }
}

abstract class _CreateUser implements UserListEvent {
  const factory _CreateUser(final UserCUEntity user) = _$CreateUserImpl;

  UserCUEntity get user;

  /// Create a copy of UserListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateUserImplCopyWith<_$CreateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserImplCopyWith<$Res> {
  factory _$$UpdateUserImplCopyWith(
    _$UpdateUserImpl value,
    $Res Function(_$UpdateUserImpl) then,
  ) = __$$UpdateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, UserCUEntity user});
}

/// @nodoc
class __$$UpdateUserImplCopyWithImpl<$Res>
    extends _$UserListEventCopyWithImpl<$Res, _$UpdateUserImpl>
    implements _$$UpdateUserImplCopyWith<$Res> {
  __$$UpdateUserImplCopyWithImpl(
    _$UpdateUserImpl _value,
    $Res Function(_$UpdateUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? user = null}) {
    return _then(
      _$UpdateUserImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as int,
        null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                as UserCUEntity,
      ),
    );
  }
}

/// @nodoc

class _$UpdateUserImpl implements _UpdateUser {
  const _$UpdateUserImpl(this.id, this.user);

  @override
  final int id;
  @override
  final UserCUEntity user;

  @override
  String toString() {
    return 'UserListEvent.updateUser(id: $id, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, user);

  /// Create a copy of UserListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      __$$UpdateUserImplCopyWithImpl<_$UpdateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsers,
    required TResult Function(UserCUEntity user) createUser,
    required TResult Function(int id, UserCUEntity user) updateUser,
    required TResult Function(int id) deleteUser,
  }) {
    return updateUser(id, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsers,
    TResult? Function(UserCUEntity user)? createUser,
    TResult? Function(int id, UserCUEntity user)? updateUser,
    TResult? Function(int id)? deleteUser,
  }) {
    return updateUser?.call(id, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsers,
    TResult Function(UserCUEntity user)? createUser,
    TResult Function(int id, UserCUEntity user)? updateUser,
    TResult Function(int id)? deleteUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(id, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_DeleteUser value) deleteUser,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUsers value)? fetchUsers,
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class _UpdateUser implements UserListEvent {
  const factory _UpdateUser(final int id, final UserCUEntity user) =
      _$UpdateUserImpl;

  int get id;
  UserCUEntity get user;

  /// Create a copy of UserListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteUserImplCopyWith<$Res> {
  factory _$$DeleteUserImplCopyWith(
    _$DeleteUserImpl value,
    $Res Function(_$DeleteUserImpl) then,
  ) = __$$DeleteUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteUserImplCopyWithImpl<$Res>
    extends _$UserListEventCopyWithImpl<$Res, _$DeleteUserImpl>
    implements _$$DeleteUserImplCopyWith<$Res> {
  __$$DeleteUserImplCopyWithImpl(
    _$DeleteUserImpl _value,
    $Res Function(_$DeleteUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeleteUserImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$DeleteUserImpl implements _DeleteUser {
  const _$DeleteUserImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'UserListEvent.deleteUser(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of UserListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      __$$DeleteUserImplCopyWithImpl<_$DeleteUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsers,
    required TResult Function(UserCUEntity user) createUser,
    required TResult Function(int id, UserCUEntity user) updateUser,
    required TResult Function(int id) deleteUser,
  }) {
    return deleteUser(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsers,
    TResult? Function(UserCUEntity user)? createUser,
    TResult? Function(int id, UserCUEntity user)? updateUser,
    TResult? Function(int id)? deleteUser,
  }) {
    return deleteUser?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsers,
    TResult Function(UserCUEntity user)? createUser,
    TResult Function(int id, UserCUEntity user)? updateUser,
    TResult Function(int id)? deleteUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUsers value) fetchUsers,
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_DeleteUser value) deleteUser,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUsers value)? fetchUsers,
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUsers value)? fetchUsers,
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class _DeleteUser implements UserListEvent {
  const factory _DeleteUser(final int id) = _$DeleteUserImpl;

  int get id;

  /// Create a copy of UserListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
