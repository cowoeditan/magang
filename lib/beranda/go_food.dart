import 'package:flutter/material.dart';


class GoFood extends StatefulWidget {
  @override
  _GoFoodState createState() => _GoFoodState();
}

class _GoFoodState extends State<GoFood> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GO-FOOD',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GO-FOOD'),
        ),
        body: Center(
          child: Text('Halaman GO-FOOD'),
        ),
      ),
    );
  }
}