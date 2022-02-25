import 'package:flutter/material.dart';
import 'package:trips_app/screens/people/card_trip.dart';

class CardTripList extends StatelessWidget {
  const CardTripList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          top: 275.0,
        ),
        child: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            CardTrip("assets/img/river.jpeg"),
            CardTrip("assets/img/beach.jpeg"),
            CardTrip("assets/img/mountain_stars.jpeg"),
            CardTrip("assets/img/beach_palm.jpeg"),
            CardTrip("assets/img/sunset.jpeg"),
          ],
        ));
  }
}
