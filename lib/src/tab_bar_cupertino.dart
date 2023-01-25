import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/src/mealReminder/ui/screens/reminder_screen.dart';
import 'package:platzi_trips_app/src/user/ui/screens/account_screen.dart';
import 'package:platzi_trips_app/src/place/ui/screens/home_screen.dart';
import 'package:platzi_trips_app/src/search/ui/screens/search_screen.dart';

class TabBarCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.indigo,
                ),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(
              Icons.alarm,
              color: Colors.indigo,
            )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.indigo,
                ),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.indigo,
                ),
                title: Text("")),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeScreen(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => ReminderScreen(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchScreen(),
              );
              break;
            case 3:
              return CupertinoTabView(
                builder: (BuildContext context) => AccountScreen(),
              );
              break;
            default:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeScreen(),
              );
          }
        },
      ),
    );
  }
}
