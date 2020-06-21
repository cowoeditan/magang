import 'package:flutter/material.dart';
import 'package:magang/beranda/beranda_model.dart';
import 'package:magang/constans.dart';

class GoTix extends StatefulWidget {
  @override
  _GoTixState createState() => _GoTixState();
}

class _GoTixState extends State<GoTix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: new AppBar(
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            backgroundColor: Colors.white,
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.local_car_wash,
                  color: GojekPalette.menuCar,
                ),
                Text(
                  "GO-TIK",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )
              ],
            )),
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 16.0),
              child: new Column(
                children: <Widget>[
                  _buildGoFoodFeatured(),
                  _buildGoFoodFeatured(),
                  _buildGoFoodFeatured(),
                  _buildGoFoodFeatured(),
                  _buildGoFoodFeatured(),
                  _buildGoFoodFeatured(),
                ],
              ),
            )
          ],
        ));
  }

  Widget _buildGoFoodFeatured() {
    return new Container(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Text(
            "GO-FOOD",
            style: new TextStyle(fontFamily: "NeoSansBold"),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 8.0),
          ),
          new Text(
            "Pilihan Terlaris",
            style: new TextStyle(fontFamily: "NeoSansBold"),
          ),
          new SizedBox(
            height: 172.0,
            child: FutureBuilder<List>(
                future: fetchFood(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return new ListView.builder(
                      itemCount: snapshot.data.length,
                      padding: EdgeInsets.only(top: 12.0),
                      physics: new ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return _rowGoFoodFeatured(snapshot.data[index]);
                      },
                    );
                  }
                  return Center(
                    child: SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: const CircularProgressIndicator()),
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget _rowGoFoodFeatured(Food food) {
    return new Container(
      margin: EdgeInsets.only(right: 16.0),
      child: new Column(
        children: <Widget>[
          new ClipRRect(
            borderRadius: new BorderRadius.circular(8.0),
            child: new Image.asset(
              food.image,
              width: 132.0,
              height: 132.0,
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 8.0),
          ),
          new Text(
            food.title,
          ),
        ],
      ),
    );
  }

  Future<List<Food>> fetchFood() async {
    List<Food> _goFoodFeaturedList = [];
    _goFoodFeaturedList.add(
        new Food(title: "Steak Andakar", image: "assets/images/food_1.jpg"));
    _goFoodFeaturedList.add(
        new Food(title: "Mie Ayam Tumini", image: "assets/images/food_2.jpg"));
    _goFoodFeaturedList.add(
        new Food(title: "Tengkleng Hohah", image: "assets/images/food_3.jpg"));
    _goFoodFeaturedList.add(
        new Food(title: "Warung Steak", image: "assets/images/food_4.jpg"));
    _goFoodFeaturedList.add(new Food(
        title: "Kindai Warung Banjar", image: "assets/images/food_5.jpg"));

    return new Future.delayed(new Duration(seconds: 1), () {
      return _goFoodFeaturedList;
    });
  }
}

//     return MaterialApp(
//       title: 'GO-TIX',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to GO-TIX'),
//         ),
//         body: Center(
//           child: Text('halaman GO-TIX'),
//         ),
//       ),
//     );
//   }
// }