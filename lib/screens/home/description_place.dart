import 'package:flutter/material.dart';
import 'package:trips_app/components/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  Widget star(bool withBorder) {
    return Container(
      margin: const EdgeInsets.only(top: 333.0, right: 3.0),
      child: Icon(
        withBorder ? Icons.star : Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );
  }

  Widget showStars(int numberStars) {
    List<Widget> rowStars = [];
    List<Widget> rowStarsBorder = [];
    for (var i = 0; i < numberStars; i++) {
      rowStars.add(star(true));
    }
    for (var i = 0; i < (numberStars - 5).abs(); i++) {
      rowStarsBorder.add(star(false));
    }
    return Row(
      children: <Widget>[...rowStars, ...rowStarsBorder],
    );
  }

  @override
  Widget build(BuildContext context) {
    final title_stars = Row(children: <Widget>[
      Container(
        margin: const EdgeInsets.only(top: 330.0, left: 20.0, right: 20.0),
        child: Text(
          namePlace,
          style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 30.0,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      showStars(stars),
    ]);

    final description = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a),
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title_stars,
        description,
        ButtonPurple("Navigate"),
      ],
    );
  }
}
