import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override 
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:new AppBar(
        title: new Text("Login"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "The Login Page",
           style: new TextStyle
           (fontSize: 25.0),
            ),
      ),
    );
  }
}