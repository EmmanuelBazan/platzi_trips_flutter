import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool _isFavorited = false;

  void onPressedFav() {
    setState(() {
      _isFavorited = !_isFavorited;
    });

    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text("Agregado a favoritos")));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      onPressed: onPressedFav,
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child:
          (_isFavorited ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
    );
  }
}
