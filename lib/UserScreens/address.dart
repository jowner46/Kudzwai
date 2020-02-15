import 'package:flutter/material.dart';

class GuguAddress extends StatefulWidget {
  @override 
  _GuguAddressState createState() => _GuguAddressState();
}

class _GuguAddressState extends State<GuguAddress> {
  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:new AppBar(
        title: new Text("Delivery Address"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "My Delivery Address",
           style: new TextStyle
           (fontSize: 25.0),
            ),
      ),
    );
  }
}