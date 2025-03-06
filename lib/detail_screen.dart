import 'package:flutter/material.dart';
import 'package:monument_app/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

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
                  fontFamily: 'Lobster',
                ),
              )),
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
                  Column(
                    children: const <Widget>[
                      Icon(Icons.schedule, size: 30.0),
                      Text(
                        '09:00 - 17:00',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.attach_money, size: 30.0),
                      Text(
                        'Rp 30.000,-',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'Monumen Tugu Pahlawan merupakan salah satu ikon bersejarah yang terletak di Surabaya, Jawa Timur, Indonesia. Sejarah Monumen Tugu Pahlawan yang Berada di Surabaya Monumen ini dibangun sebagai bentuk penghormatan kepada para pahlawan yang berjuang dalam pertempuran melawan penjajah, terutama dalam peristiwa heroik yang terjadi pada 10 November 1945. ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Oxygen',
              ),
            ),
          ),
          Container(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      'assets/images/tugu_kecil1.jpg',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      'assets/images/tugu_kecil2.jpg',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      'assets/images/tugu_kecil3.jpg',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      'assets/images/tugu_kecil4.jpg',
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

