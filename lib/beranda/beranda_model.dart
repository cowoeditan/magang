import 'package:flutter/material.dart';

class GojekService {
  IconData image;
  Color color;
  String title;
  Widget url;

  GojekService({this.image, this.title, this.color, this.url});
}

class Food {
  String title;
  String image;
  String harga;
  Food({this.title, this.image, this.harga});
}

class Promo{
  String image;
  String title;
  String content;
  String button;
  String harga;

  Promo({this.image, this.title, this.content, this.button, this.harga});
}
