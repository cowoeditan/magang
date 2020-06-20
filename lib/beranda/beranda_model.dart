import 'package:flutter/material.dart';
import 'package:magang/beranda/widget/go_food.dart';

// class GojekService {
//   IconData image;
//   Color color;
//   String title;
//   Widget url;

//   GojekService({this.image, this.title, this.color, this.url});
// }

class GojekService extends StatefulWidget {
 IconData image;
  Color color;
  String title;
  Widget url;
   GojekService({this.image, this.title, this.color, this.url});
  @override
  _GojekServiceState createState() => _GojekServiceState();
}

class _GojekServiceState extends State<GojekService> {
  @override
  Widget build(BuildContext context) {
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return GoFood();
              }));
            },
          );
  }
}


class Food {
  String title;
  String image;
  Food({this.title, this.image});
}

class Promo {
  String image;
  String title;
  String content;
  String button;

  Promo({this.image, this.title, this.content, this.button});
}
