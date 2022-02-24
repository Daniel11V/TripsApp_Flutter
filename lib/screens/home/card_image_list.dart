import 'package:flutter/material.dart';
import 'package:trips_app/screens/home/card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350.0,
        child: ListView(
          padding: const EdgeInsets.all(25.0),
          scrollDirection: Axis.horizontal,
          children: [
            CardImage("assets/img/beach.jpeg"),
            CardImage("assets/img/beach_palm.jpeg"),
            CardImage("assets/img/mountain.jpeg"),
            CardImage("assets/img/mountain_stars.jpeg"),
            CardImage("assets/img/river.jpeg"),
            CardImage("assets/img/sunset.jpeg"),
          ],
        ));
  }
}
