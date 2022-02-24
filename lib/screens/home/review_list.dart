import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("assets/img/people.jpeg", "Varuna Yasas", "1 review 5 photos",
            "There is an amazing place in Sri Lanka"),
        Review("assets/img/ann.jpeg", "Anahí Salgado", "2 review 3 photos",
            "There is an amazing place in Sri Lanka"),
        Review("assets/img/girl.jpeg", "Gissele Thomas", "2 review 4 photos",
            "There is an amazing place in Sri Lanka"),
      ],
    );
  }
}
