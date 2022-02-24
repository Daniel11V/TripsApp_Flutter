import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool _onFavorites = false;

  void onPressedFav() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(_onFavorites
            ? "Quitaste de Favoritos"
            : "Agregaste a tus Favoritos"),
      ),
    );

    setState(() {
      _onFavorites = !_onFavorites;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(_onFavorites ? Icons.favorite_sharp : Icons.favorite_border),
    );
  }
}
