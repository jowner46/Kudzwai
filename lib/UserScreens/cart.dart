import 'package:flutter/material.dart';

class GuguCart extends StatefulWidget {
  @override 
  _GuguCartState createState() => _GuguCartState();
}

class _GuguCartState extends State<GuguCart> {
  @override 
  Widget build(BuildContext context) { 
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Cart"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "My Cart",
          style: new TextStyle(
            fontSize: 25.0),
            ),
          ),
     );
    }
}