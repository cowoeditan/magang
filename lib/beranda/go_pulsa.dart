import 'package:flutter/material.dart';

class GoPulsa extends StatefulWidget {
  @override
  _GoPulsaState createState() => _GoPulsaState();
}

class _GoPulsaState extends State<GoPulsa> {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      title: 'GO-PULSA',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to GO-PULSA'),
        ),
        body: Center(
          child: Text('HALAMAN GO-PULSA'),
        ),
      ),
    );
  }
}