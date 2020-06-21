import 'package:flutter/material.dart';
import 'package:magang/beranda/beranda_model.dart';
import 'package:magang/beranda/beranda_gojek_appbar.dart';
import 'package:magang/constans.dart';

class PromoPage extends StatefulWidget {
  @override
  _PromoPageState createState() => new _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return new SafeArea(
      child: new Scaffold(
        appBar: new GojekAppBar(),
        backgroundColor: GojekPalette.grey,
        body: new Container(
          child: new ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              new Container(
                  color: Colors.white,
                  child: new Column(
                    children: <Widget>[
                    _buildStatus(),
                    SizedBox(
                      height: 10,
                      ),
                      _buildKodePromo(),

                      //_buildGopayMenu(),
                      //_buildGojekServicesMenu(),
                    ],
                  ),
                  ),
             new Container(
                color: Colors.white,
                margin: EdgeInsets.all(2),
                child: new Column(
                  children: <Widget>[
                     SizedBox(
                      height: 10,
                      ),
                    Text('Promo Menarik Buat Kamu',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
                    _buildGoFoodFeatured(),
                    SizedBox(
                      height: 10,
                      ),
                    _buildIklan1(),
                    SizedBox(height: 10,),
                    _buildIklan2(),
                    SizedBox(height: 10,),
                    _buildIklan3(),
                    SizedBox(height: 10,),
                    _buildIklan4(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

Widget _buildStatus() {
    return new Container(
                      margin: EdgeInsets.only( top :10),
          child: new Row(
            children: <Widget>[
              new Card(
                child: new Container(
                  height: 90,
                  width: 110,
                  color: Colors.orange[300],
                  child: new Column(
                    children: <Widget>[
                      new Text('0',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                      new Text('Vouchers',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      new Text('Bisa Dipakai',style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
              ),
              new Card(
                child: new Container(
                  height: 90,
                  width: 110,
                  color: Colors.blue[300],
                  child: new Column(
                    children: <Widget>[
                     new Text('0',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                      new Text('Langganan',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      new Text('Lagi Aktif',style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
              ),
              new Card(
                child: new Container(
                  height: 90,
                  width: 110,
                  color: Colors.purple[300],
                  child: new Column(
                    children: <Widget>[
                      new Text('0',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                      new Text('Missions',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      new Text('Lagi Berjalan',style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
              )
            ],
          ),
    );
  }


Widget _buildIklan1() {
  return new Container(
    height: 180,
    decoration: BoxDecoration(
    color: Colors.pink[100],
    borderRadius: BorderRadius.circular(10),
    image: DecorationImage(
      image: AssetImage('assets/images/promo_1.jpg'),
      fit: BoxFit.cover),
    ),
  );
}

Widget _buildKodePromo() {
 return new Container(
  child: Card(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
           leading: Icon(Icons.assignment, size: 50),
            title: Text('Masukkan Kode Promo'),
            trailing: Icon(Icons.arrow_right,size: 50),
        ), 
      ],
    ),
  ),
   );
}

Widget _buildIklan2() {
  return new Container(
    height: 180,
    decoration: BoxDecoration(
    color: Colors.pink[100],
    borderRadius: BorderRadius.circular(10),
    image: DecorationImage(
      image: AssetImage('assets/images/promo_2.jpg'),
      fit: BoxFit.cover),
    ),
  );
}

Widget _buildIklan3() {
  return new Container(
    height: 180,
    decoration: BoxDecoration(
    color: Colors.pink[100],
    borderRadius: BorderRadius.circular(10),
    image: DecorationImage(
      image: AssetImage('assets/images/promo_3.jpg'),
      fit: BoxFit.cover),
    ),
  );
}

Widget _buildIklan4() {
  return new Container(
    height: 180,
    decoration: BoxDecoration(
    color: Colors.pink[100],
    borderRadius: BorderRadius.circular(10),
    image: DecorationImage(
      image: AssetImage('assets/images/promo_4.jpg'),
      fit: BoxFit.cover),
    ),
  );
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

  Future<List<Food>> fetchFood() async {
    List<Food> _goFoodFeaturedList = [];
    _goFoodFeaturedList.add(
        new Food(title: "Steak Andakar", image: "assets/images/food_1.jpg", harga: "RP.20.000"));
    _goFoodFeaturedList.add(
        new Food(title: "Mie Ayam Tumini", image: "assets/images/food_2.jpg",harga :"RP.20.000"));
    _goFoodFeaturedList.add(
        new Food(title: "Tengkleng Hohah", image: "assets/images/food_3.jpg",harga: "RP.20.000"));
    _goFoodFeaturedList.add(
        new Food(title: "Warung Steak", image: "assets/images/food_4.jpg" ,harga: "RP.20.000"));
    _goFoodFeaturedList.add(new Food(
        title: "Kindai Warung Banjar", image: "assets/images/food_5.jpg", harga: "RP.20.000"));

    return new Future.delayed(new Duration(seconds: 1), () {
      return _goFoodFeaturedList;
    });
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

}