import 'package:flutter/material.dart';

class GuguMessages extends StatefulWidget {
  @override 
  _GuguMessagesState createState() => _GuguMessagesState();
}

class _GuguMessagesState extends State<GuguMessages> {
  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Messages"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "My Messages",
          style: new TextStyle(fontSize: 25.0),
       ),
      ),
    );
  }
}