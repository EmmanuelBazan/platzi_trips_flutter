import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card_image.dart';

class CardImageList extends StatelessWidget {
  String path_img = "assets/viaje1.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/viaje1.jpg"),
          CardImage("assets/viaje2.jpg"),
          CardImage("assets/viaje3.jpg"),
          CardImage("assets/viaje4.jpg"),
        ],
      ),
    );
  }
}
