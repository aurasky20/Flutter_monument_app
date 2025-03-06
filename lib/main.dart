import 'package:flutter/material.dart';
import 'package:monument_app/detail_screen.dart';
import 'package:monument_app/main_screen.dart';
import 'package:monument_app/model/tourism_place.dart';

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

