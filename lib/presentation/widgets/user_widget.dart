import 'package:flutter/material.dart';
import 'package:newsapp/data/models/user_model.dart';

class UserWidget extends StatelessWidget {
  final UserModel user;

  const UserWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(user.name),
        subtitle: Text(user.email),
      ),
    );
  }
}
