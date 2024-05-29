import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/data/models/user_model.dart';
import 'package:newsapp/data/repositories/user_repository.dart';

class UserCubit extends Cubit<UserModel?> {
  final UserRepository userRepository;

  UserCubit(this.userRepository) : super(null);

  Future<void> getUser(String id) async {
    try {
      final user = await userRepository.fetchUser(id);
      emit(user);
    } catch (e) {
      emit(null);
    }
  }
}
