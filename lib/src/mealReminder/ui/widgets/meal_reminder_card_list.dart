import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/mealReminder/ui/widgets/meal_reminder_card.dart';

class MealReminderCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 250.0),
      child: Column(
        children: <Widget>[
          MealReminderCard(
              "assets/comida1.jpg", "Breakfast 1st", "07:00 - 08:00"),
          MealReminderCard(
              "assets/comida2.jpg", "Breakfast 2nd", "08:00 - 09:00"),
          MealReminderCard("assets/comida3.jpg", "Lunch", "09:00 - 10:00"),
          MealReminderCard("assets/comida4.jpg", "Dinner", "10:00 - 11:00"),
          MealReminderCard("assets/comida5.jpg", "Super", "11:00 - 12:00"),
          MealReminderCard("assets/comida6.jpg", "Dinner 2nd", "13:00 - 14:00"),
        ],
      ),
    );
  }
}
