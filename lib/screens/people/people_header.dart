import 'package:flutter/material.dart';
import 'package:trips_app/screens/people/people_button.dart';

class PeopleHeader extends StatelessWidget {
  String title = "Popular";
  String pathImage = "assets/img/people.jpeg";
  String name = "Daniel Vinet";
  String email = "daniel1vinet@gmail.com";

  PeopleHeader(this.title, this.name, this.email, this.pathImage);

  @override
  Widget build(BuildContext context) {
    final topHeader = Container(
      margin: const EdgeInsets.only(
        top: 55.0,
        left: 5.0,
        right: 15.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
            ),
          ),
          const Icon(
            Icons.settings,
            color: Color.fromARGB(172, 255, 255, 255),
            size: 20.0,
          ),
        ],
      ),
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 15.0,
        left: 10.0,
        bottom: 15.0,
        right: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
        shape: BoxShape.circle,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Color.fromARGB(140, 0, 0, 0),
            blurRadius: 10.0,
            offset: Offset(0.0, 3.0),
          ),
        ],
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );

    final userName = Container(
      margin: const EdgeInsets.only(
        bottom: 2.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final userEmail = Container(
      child: Text(
        email,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 15.0,
          color: Color.fromARGB(214, 255, 255, 255),
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [userName, userEmail],
    );

    final profileInfo = Row(
      children: [photo, userDetails],
    );

    final groupButtons = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        PeopleButton("Bookmark", Icons.bookmark_outline, false),
        PeopleButton("Cast", Icons.cast, false),
        PeopleButton("Add", Icons.add, true),
        PeopleButton("Email", Icons.email, false),
        PeopleButton("People", Icons.people, false),
      ],
    );

    return Container(
      height: 350,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1),
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          bottom: 20.0,
        ),
        child: Column(
          children: [topHeader, profileInfo, groupButtons],
        ),
      ),
      alignment: const Alignment(-0.9, -0.6),
    );
  }
}
