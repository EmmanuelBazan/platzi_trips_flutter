import 'package:flutter/material.dart';
import 'package:platzi_trips_app/main_button.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext) {
    // TODO: implement build

    final star_border = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Colors.amber,
      ),
    );

    final start_half = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Colors.amber,
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final title_stars = Row(
      textDirection: TextDirection.ltr,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                fontFamily: "Lato"),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [star, star, star, star, star],
        ),
      ],
    );

    final description_text = Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    );

    final description_place_widget = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[title_stars, description_text, MainButton("Navigate")],
    );

    return description_place_widget;
  }
}
