import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:trips_app/screens/home/home_trips.dart';
import 'package:trips_app/screens/people/people_trips.dart';
import 'package:trips_app/screens/search/search_trips.dart';

class TripsCurved extends StatefulWidget {
  const TripsCurved({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TripsCurved();
  }
}

class _TripsCurved extends State<TripsCurved> {
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    PeopleTrips(),
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 50.0,
        color: const Color(0xFF584CD1),
        backgroundColor: Colors.white,
        onTap: onTapTapped,
        animationDuration: const Duration(milliseconds: 400),
        items: const [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.person, color: Colors.white),
        ],
      ),
      body: widgetsChildren[indexTap],
    );
  }
}
