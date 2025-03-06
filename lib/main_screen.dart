import 'package:flutter/material.dart';
import 'package:monument_app/detail_screen.dart';
import 'package:monument_app/main.dart';
import 'package:monument_app/model/tourism_place.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  // final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Surabaya'),
      ),
      body: ListView.builder(
  itemCount: tourismPlaceList.length, // ✅ Pastikan ini sesuai dengan jumlah data
  itemBuilder: (context, index) {
    if (index >= tourismPlaceList.length) {
      return SizedBox(); // Menghindari error jika ada indeks yang berlebih
    }
    final TourismPlace place = tourismPlaceList[index];
    return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailScreen(place: place);
          }));
        },
        child: ListItem(place));
  },
),
    );
  }
}

Widget ListItem(TourismPlace place) {
  return Card(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Image.asset(place.imageAsset),
        ),
        Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    place.name,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(place.location),
                ],
              ),
            ))
      ],
    ),
  );
}
