import 'package:flutter_bloc/flutter_bloc.dart';
import 'userlist_event.dart';
import 'userlist_state.dart';
import '../../domain/user_list/repository/i_userList_repository.dart';

class UserListBloc extends Bloc<UserListEvent, UserListState> {
  final IUserListRepository repository;

  UserListBloc(this.repository) : super(const UserListState.initial()) {
    on<UserListEvent>((event, emit) async {
      await event.map(fetchUsers: (e) async {
        emit(const UserListState.loading());
        try {
          final users = await repository.fetchUsers();
          emit(UserListState.loaded(users));
        } catch (e) {
          emit(UserListState.error(e.toString()));
          }
        },
        createUser: (e) async {
        emit(const UserListState.loading());
        try {
          await repository.createUser(e.user);

          final users = await repository.fetchUsers();
          emit(UserListState.loaded(users));
        } catch (e) {
          emit(UserListState.error(e.toString()));
        }
      },
      updateUser: (e) async {
      emit(const UserListState.loading());
      try {
      await repository.updateUser(e.id, e.user);
      final users = await repository.fetchUsers();
      emit(UserListState.loaded(users));
      } catch (e) {
      emit(UserListState.error(e.toString()));
      }
      },
      deleteUser: (e) async {
      emit(const UserListState.loading());
      try {
      await repository.deleteUser(e.id);
      final users = await repository.fetchUsers();
      emit(UserListState.loaded(users));
      } catch (e) {
        emit(UserListState.error(e.toString()));
      }
      },
      );
    });
  }
}
