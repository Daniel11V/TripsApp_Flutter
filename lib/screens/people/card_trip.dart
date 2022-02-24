import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:trips_app/components/floating_action_button_green.dart';

class CardTrip extends StatelessWidget {
  String pathImage = "assets/img/beach.jpeg";
  String place = "Knuckles Mountains Range";
  String description =
      "Hiking, Water tall hunting, Natural bath, Scenary & Photography";
  String steps = "Steps  123, 123, 123";

  CardTrip(this.pathImage);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final cardImage = Container(
      height: 205.0,
      margin: const EdgeInsets.only(
        bottom: 80.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        shape: BoxShape.rectangle,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          ),
        ],
      ),
    );

    final placeText = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
        top: 20.0,
        right: 20.0,
      ),
      child: Text(
        place,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
    );

    final descriptionText = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
        top: 8.0,
        right: 20.0,
      ),
      child: Text(
        description,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 10.0,
          color: Color(0xFFa3a5a7),
        ),
      ),
    );

    final stepsText = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
        top: 8.0,
        right: 20.0,
      ),
      child: Text(
        steps,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: Colors.amber,
        ),
      ),
    );

    final cardInfo = Container(
      height: 115.0,
      width: screenWidth * 0.76,
      margin: EdgeInsets.only(
        bottom: 40.0,
        left: screenWidth * 0.12,
        right: screenWidth * 0.12,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          ),
        ],
      ),
      child: Stack(
        alignment: const Alignment(0.9, 1.3),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [placeText, descriptionText, stepsText],
          ),
          const FloatingActionButtonGreen(),
        ],
      ),
    );

    return Stack(
      alignment: const Alignment(0.9, 1.1),
      children: [
        cardImage,
        cardInfo,
      ],
    );
  }
}
