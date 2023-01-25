import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/place/ui/widgets/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Review("assets/perro_cool.jpg", "Veruna Yasas", "1 review 5 photos",
            "There is an amazing place in Sri Lanka"),
        Review("assets/perro_cool.jpg", "Veruna Yasas", "1 review 5 photos",
            "There is an amazing place in Sri Lanka"),
        Review("assets/perro_cool.jpg", "Veruna Yasas", "1 review 5 photos",
            "There is an amazing place in Sri Lanka"),
        Review("assets/perro_cool.jpg", "Veruna Yasas", "1 review 5 photos",
            "There is an amazing place in Sri Lanka"),
        Review("assets/perro_cool.jpg", "Veruna Yasas", "1 review 5 photos",
            "There is an amazing place in Sri Lanka"),
      ],
    );
  }
}
