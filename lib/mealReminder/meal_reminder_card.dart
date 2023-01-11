import 'package:flutter/material.dart';

class MealReminderCard extends StatelessWidget {
  String url_img = "assets";
  String title_reminder = "Lunch";
  String time_reminder = "12:00 - 13:00";

  MealReminderCard(this.url_img, this.title_reminder, this.time_reminder);

  @override
  Widget build(BuildContext context) {
    final switcWidget = Container();

    final reminderInfo = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title_reminder,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 26.0,
                fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              Text(
                time_reminder,
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal),
              ),
              Container(
                margin: EdgeInsets.only(left: 30.0),
                child: Icon(
                  Icons.edit_notifications_outlined,
                  color: Color(0xFF98E65E),
                ),
              )
            ],
          )
        ],
      ),
    );

    final imgContainer = Container(
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(url_img))),
    );

    final mainContainer = Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [imgContainer, reminderInfo, switcWidget],
      ),
    );

    return mainContainer;
  }
}
