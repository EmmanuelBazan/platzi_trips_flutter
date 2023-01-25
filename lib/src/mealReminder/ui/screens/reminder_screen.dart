import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/mealReminder/ui/screens/meal_header.dart';
import 'package:platzi_trips_app/src/mealReminder/ui/widgets/meal_reminder_card_list.dart';

class ReminderScreen extends StatelessWidget {
  const ReminderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[MealReminderCardList()],
        ),
        MealHeader(),
      ],
    ));
  }
}
