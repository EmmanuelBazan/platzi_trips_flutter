import 'package:flutter/material.dart';

import '../description_place.dart';
import '../header_appbar.dart';
import '../review_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Duwili Ella", 5,
                "Velit veniam aliqua labore duis mollit eiusmod eu occaecat est consectetur ea laborum ut ipsum. Occaecat veniam fugiat nulla quis do veniam ipsum nulla adipisicing voluptate veniam voluptate deserunt deserunt. Officia sit tempor ut adipisicing. Deserunt sunt ex reprehenderit magna esse labore enim laborum magna est excepteur.\n Ut amet proident consequat dolore amet adipisicing amet tempor. Cillum fugiat commodo consequat dolore. Fugiat consequat in proident quis laborum esse nostrud veniam quis reprehenderit mollit. Non eiusmod amet proident pariatur anim quis."),
            ReviewList()
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }
}
