import 'package:flutter/material.dart';
import 'package:newsapp/data/models/user_model.dart';
import 'package:newsapp/data/repositories/user_repository.dart';

class UserProvider with ChangeNotifier {
  final UserRepository userRepository;

  UserProvider(this.userRepository);

  UserModel? _user;
  UserModel? get user => _user;

  Future<void> getUser(String id) async {
    _user = await userRepository.fetchUser(id);
    notifyListeners();
  }
}
