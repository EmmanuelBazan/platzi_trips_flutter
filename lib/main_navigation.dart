import 'package:flutter/material.dart';
import 'package:platzi_trips_app/screens/account_screen.dart';
import 'package:platzi_trips_app/screens/home_screen.dart';
import 'package:platzi_trips_app/screens/search_screen.dart';

class MainNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainNavigation();
  }
}

class _MainNavigation extends State<MainNavigation> {
  int indexTab = 0;

  final List<Widget> widgetsChildren = [
    HomeScreen(),
    SearchScreen(),
    AccountScreen()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTab],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTab,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.people), title: Text("")),
          ],
        ),
      ),
    );
  }
}
