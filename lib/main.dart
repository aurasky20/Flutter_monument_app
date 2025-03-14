import 'package:flutter/material.dart';
import 'package:monument_app/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auras App',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}

