import 'package:flutter/material.dart';
import 'package:newsapp/presentation/screens/home_screen.dart';

class Routes {
  static final routes = <String, WidgetBuilder>{
    '/': (context) => const HomeScreen(
          userRepository: null,
        ),
  };
}
