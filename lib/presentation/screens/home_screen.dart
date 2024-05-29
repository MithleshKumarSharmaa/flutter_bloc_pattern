import 'package:flutter/material.dart';
import 'package:newsapp/data/providers/user_provider.dart';
import 'package:newsapp/presentation/widgets/user_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required userRepository});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Provider.of<UserProvider>(context, listen: false).getUser('1');
              },
              child: Text('Get User'),
            ),
            Consumer<UserProvider>(
              builder: (context, userProvider, child) {
                if (userProvider.user == null) {
                  return Text('No user data');
                } else {
                  return UserWidget(user: userProvider.user!);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
