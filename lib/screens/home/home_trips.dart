import 'package:flutter/material.dart';
import 'package:trips_app/screens/home/review_list.dart';
import 'package:trips_app/screens/home/description_place.dart';
import 'package:trips_app/screens/home/header_appbar.dart';

class HomeTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String descriptionDummy =
        """Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!""";

    return Stack(
      children: [
        ListView(children: [
          DescriptionPlace("Bahamas", 4, descriptionDummy),
          ReviewList(),
        ]),
        HeaderAppBar(),
      ],
    );
  }
}
