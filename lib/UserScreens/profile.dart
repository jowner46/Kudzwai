import 'package:flutter/material.dart';

class GuguProfile extends StatefulWidget {
  @override 
  _GuguProfileState createState() => _GuguProfileState();
}

class _GuguProfileState extends State<GuguProfile> {
  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:new AppBar(
        title: new Text("Profile Settings"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "My Profile Settings",
           style: new TextStyle
           (fontSize: 25.0),
            ),
      ),
    );
  }
}