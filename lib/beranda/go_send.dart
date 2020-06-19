import 'package:flutter/material.dart';

class GoSend extends StatefulWidget {
  @override
  _GoSendState createState() => _GoSendState();
}

class _GoSendState extends State<GoSend> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GO-SEND',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to GO-SEND'),
        ),
        body: Center(
          child: Text('HALAMAN GO-SEND'),
        ),
      ),
    );
  }
}