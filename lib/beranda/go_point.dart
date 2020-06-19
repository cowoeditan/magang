import 'package:flutter/material.dart';

class GoPoint extends StatefulWidget {
  @override
  _GoPointState createState() => _GoPointState();
}

class _GoPointState extends State<GoPoint> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GO-POINT',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to GO-POINT'),
        ),
        body: Center(
          child: Text('HALAMAN GO-POINT'),
        ),
      ),
    );
  }
}