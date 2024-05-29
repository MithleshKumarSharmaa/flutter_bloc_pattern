import 'package:flutter/material.dart';
import 'package:newsapp/data/providers/user_provider.dart';
import 'package:newsapp/data/repositories/user_repository.dart';
import 'package:newsapp/dependency_injection/locator.dart';
import 'package:newsapp/routes.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(locator<UserRepository>()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: Routes.routes,
      ),
    );
  }
}
