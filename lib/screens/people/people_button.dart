import 'package:flutter/material.dart';

class PeopleButton extends StatefulWidget {
  bool isBigger = false;
  IconData icon = Icons.add;
  String tooltip = "Button";

  PeopleButton(this.tooltip, this.icon, this.isBigger);

  @override
  State<StatefulWidget> createState() {
    return _PeopleButton(tooltip, icon, isBigger);
  }
}

class _PeopleButton extends State<PeopleButton> {
  bool isBigger = false;
  IconData icon = Icons.add;
  String tooltip = "Button";
  bool _isPressed = false;

  _PeopleButton(this.tooltip, this.icon, this.isBigger);

  void onPressedButton() {
    // Do something...

    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor:
          _isPressed ? const Color.fromARGB(172, 255, 255, 255) : Colors.white,
      foregroundColor: const Color(0xFF584CD1),
      mini: !isBigger,
      tooltip: tooltip,
      onPressed: onPressedButton,
      child: Icon(icon, size: isBigger ? 35.0 : 25.0),
    );
  }
}
