import 'package:flutter/material.dart';

class DD extends StatefulWidget {
  @override
  _DDState createState() => _DDState();
}

class _DDState extends State<DD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.teal,
          title: new Text(
            "NAMA MENU",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
       body: Container(
         child: Text("BACOOOTT"),
       ),
    );
  }
}