import 'package:flutter/material.dart';

class GoGame extends StatefulWidget {
  @override
  _GoGameState createState() => _GoGameState();
}

class _GoGameState extends State<GoGame> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GO-GAME',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to GO-GAME'),
        ),
        body: Center(
          child: Text('HALAMAN GO-GAME'),
        ),
      ),
    );
  }
}