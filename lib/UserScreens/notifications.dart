import 'package:flutter/material.dart';

class GuguNotifications extends StatefulWidget {
  @override 
  _GuguNotificationsState createState() => _GuguNotificationsState();
}

class _GuguNotificationsState extends State<GuguNotifications> {
  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:new AppBar(
        title: new Text("Order Notifications"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "My Notifications",
           style: new TextStyle
           (fontSize: 25.0),
            ),
      ),
    );
  }
}