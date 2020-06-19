import 'package:flutter/material.dart';

class GoShop extends StatefulWidget {
  @override
  _GoShopState createState() => _GoShopState();
}

class _GoShopState extends State<GoShop> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GO-SHOP',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to GO-SHOP'),
        ),
        body: Center(
          child: Text('Halaman GO-SHOP'),
        ),
      ),
    );
  }
}