import 'package:flutter/material.dart';

class GoMart extends StatefulWidget {
  @override
  _GoMartState createState() => _GoMartState();
}

class _GoMartState extends State<GoMart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GO-MART',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to GO-MART'),
        ),
        body: Center(
          child: Text('HALAMAN GO-MART'),
        ),
      ),
    );
  }
}