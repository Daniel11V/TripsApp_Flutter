import 'package:flutter/material.dart';
import 'package:trips_app/screens/people/card_trip_list.dart';
import 'package:trips_app/screens/people/people_header.dart';

class PeopleTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PeopleHeader("Profile", "Daniel  Vinet", "daniel1vinet@gmail.com",
            "assets/img/me.png"),
        const CardTripList(),
      ],
    );
  }
}
