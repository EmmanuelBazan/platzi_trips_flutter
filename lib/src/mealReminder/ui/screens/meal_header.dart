import 'package:flutter/material.dart';
import 'package:platzi_trips_app/customShapes/header_curved.dart';

class MealHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleReminder = Container(
      margin: EdgeInsets.only(top: 50.0, bottom: 10.0),
      child: Row(
        children: <Widget>[
          Text(
            "Meal ",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 14.0,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Reminder",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 14.0,
                fontWeight: FontWeight.normal),
          )
        ],
      ),
    );

    final dayTitle = Row(
      children: <Widget>[
        Text(
          "Monday ",
          style: TextStyle(
              color: Colors.black87,
              fontSize: 26.0,
              fontWeight: FontWeight.w600),
        ),
        Text(
          "27 Apr",
          style: TextStyle(
              color: Colors.black45,
              fontSize: 24.0,
              fontWeight: FontWeight.normal),
        ),
        Container(
          margin: EdgeInsets.only(left: 200.0),
          child: Icon(Icons.calendar_today_outlined),
        )
      ],
    );

    final mainHeader = Stack(
      children: <Widget>[
        Container(
          height: 100.0,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: CustomPaint(
            painter: HeaderCurved(),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 40.0, left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.menu,
                color: Colors.black54,
              ),
              titleReminder,
              dayTitle
            ],
          ),
        ),
      ],
    );

    return mainHeader;
  }
}
