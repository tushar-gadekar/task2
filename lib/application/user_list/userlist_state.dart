import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/user_list/entity/userlist_response_entity.dart';

part 'userlist_state.freezed.dart';

@freezed
class UserListState with _$UserListState {
  const factory UserListState.initial() = _Initial;
  const factory UserListState.loading() = _Loading;
  const factory UserListState.loaded(List<UserEntity> users) = _Loaded;
  const factory UserListState.error(String message) = _Error;
}
