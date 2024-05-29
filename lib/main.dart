import 'package:flutter/material.dart';
import 'dependency_injection/locator.dart';
import 'app.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}
