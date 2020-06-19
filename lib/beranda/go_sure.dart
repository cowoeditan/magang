import 'package:flutter/material.dart';

class GoSure extends StatefulWidget {
  @override
  _GoSureState createState() => _GoSureState();
}

class _GoSureState extends State<GoSure> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GO-SURE',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to GO-SURE'),
        ),
        body: Center(
          child: Text('HALAMAN GO-SURE'),
        ),
      ),
    );
  }
}