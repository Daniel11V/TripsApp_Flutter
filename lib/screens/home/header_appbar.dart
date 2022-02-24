import 'package:flutter/material.dart';
import 'package:trips_app/screens/home/card_image_list.dart';
import 'package:trips_app/components/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack("Destinos"),
        const CardImageList(),
      ],
    );
  }
}
