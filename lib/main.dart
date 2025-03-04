import 'package:flutter/material.dart';
import 'package:monument_app/detail_screen.dart';

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
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset('assets/images/tugu.webp'),
          Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                "Monumen Tugu Pahlawan Surabaya",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      Icon(Icons.calendar_today, size: 30.0),
                      Text(
                        'Open Everyday',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ],
              )
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'Monumen Tugu Pahlawan merupakan salah satu ikon bersejarah yang terletak di Surabaya, Jawa Timur, Indonesia. Sejarah Monumen Tugu Pahlawan yang Berada di Surabaya Monumen ini dibangun sebagai bentuk penghormatan kepada para pahlawan yang berjuang dalam pertempuran melawan penjajah, terutama dalam peristiwa heroik yang terjadi pada 10 November 1945. ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    ));
  }
}
