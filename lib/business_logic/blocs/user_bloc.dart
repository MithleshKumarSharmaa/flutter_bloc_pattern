import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/data/models/user_model.dart';
import 'package:newsapp/data/repositories/user_repository.dart';

abstract class UserEvent {}

class FetchUser extends UserEvent {
  final String id;
  FetchUser(this.id);
}

abstract class UserState {}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  final UserModel user;
  UserLoaded(this.user);
}

class UserError extends UserState {}

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;

  UserBloc(this.userRepository) : super(UserInitial());

  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is FetchUser) {
      yield UserLoading();
      try {
        final user = await userRepository.fetchUser(event.id);
        yield UserLoaded(user);
      } catch (_) {
        yield UserError();
      }
    }
  }
}
