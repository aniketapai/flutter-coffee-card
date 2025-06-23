import 'package:flutter/material.dart';
import 'package:flutter_coffee/home.dart';

void main() {
  runApp(const MyApp()); // root widget
}
// widgets are just dart classes which are instantiated when we need them
// custom widgets and in-built widgets

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // build method helps in hot reload not no need to restart everytime
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
