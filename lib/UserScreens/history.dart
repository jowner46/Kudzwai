import 'package:flutter/material.dart';

class GuguHistory extends StatefulWidget {
  @override 
  _GuguHistoryState createState() => _GuguHistoryState();
}

class _GuguHistoryState extends State<GuguHistory> {
  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:new AppBar(
        title: new Text("Order History"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "My Order History",
           style: new TextStyle
           (fontSize: 25.0),
            ),
      ),
    );
  }
}