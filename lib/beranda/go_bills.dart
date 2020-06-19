import 'package:flutter/material.dart';

class GoBills extends StatefulWidget {
  @override
  _GoBillsState createState() => _GoBillsState();
}

class _GoBillsState extends State<GoBills> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GO-BILLS',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to GO-BILLS'),
        ),
        body: Center(
          child: Text('HALAMAN GO-BILLS'),
        ),
      ),
    );
  }
}