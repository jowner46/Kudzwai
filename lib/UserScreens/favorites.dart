import 'package:flutter/material.dart';

class GuguFavorites extends StatefulWidget {
  @override 
  _GuguFavoritesState createState() => _GuguFavoritesState();
}

class _GuguFavoritesState extends State<GuguFavorites> {
  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My Favorites"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "My Favorites", 
          style: new TextStyle(
            fontSize: 25.0),
              ),
            ),
    );
  }
}