import "package:flutter/material.dart";
import 'UserScreens/myHomePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Gugu',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}