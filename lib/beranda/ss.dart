import 'package:flutter/material.dart';

class SS extends StatefulWidget {
  @override
  _SSState createState() => _SSState();
}

class _SSState extends State<SS> {
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
         child: Card(
           child: Column(
             children: <Widget>[
               Text("MMAMA"),
               Text("JDJD")
             ],
           ),
         ),
       ),
    );
  }
}