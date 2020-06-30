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

class Tix {
  String image;
  String title;
  String content;

  Tix({this.image, this.title, this.content});

}

class Tixa {
  String image;
  String title;
  

  Tixa({this.image, this.title});

}

class ProductCard {
  final String imageURL;

  ProductCard({this.imageURL = ""});
}

class Game{
  String image;
  String title;

  Game({this.image, this.title});
}

class Gamep{
  String image;
  String title;

  Gamep({this.image, this.title});
}

class Games{
  String image;
  String title;

  Games({this.image, this.title});
}
