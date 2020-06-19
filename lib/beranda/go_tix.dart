import 'package:flutter/material.dart';

class GoTix extends StatefulWidget {
  @override
  _GoTixState createState() => _GoTixState();
}

class _GoTixState extends State<GoTix> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GO-TIX',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to GO-TIX'),
        ),
        body: Center(
          child: Text('halaman GO-TIX'),
        ),
      ),
    );
  }
}