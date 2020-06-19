import 'package:flutter/material.dart';

class GoNearby extends StatefulWidget {
  @override
  _GoNearbyState createState() => _GoNearbyState();
}

class _GoNearbyState extends State<GoNearby> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GO-NEARBY',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to GO-NEARBY'),
        ),
        body: Center(
          child: Text('HALAMAN GO-NEARBY'),
        ),
      ),
    );
  }
}