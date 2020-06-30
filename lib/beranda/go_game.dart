import 'package:flutter/material.dart';
import 'package:magang/beranda/beranda_model.dart';
import 'package:magang/constans.dart';

class GoGame extends StatefulWidget {
  @override
  _GoGameState createState() => _GoGameState();
}
class _GoGameState extends State<GoGame>{
  

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GO-GAME',
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black,),
          backgroundColor: Colors.white,
          title: Row(
            children: <Widget>[
              Icon(
                Icons.games,
                color: GojekPalette.menuGame,
              ),
              Text(
                "GO-GAME",
                style: TextStyle(color: Colors.black,
                ),
              )
            ],
          ),
        ),

        
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 16.0),
              child: new Column(
                children: <Widget>[
                  _buildGoMainFeatured(),
                  _buildGoMiniFeatured(),
                  _buildGoTvFeatured()
                  
                ]
              ),
            )
          ],
        )
      )
    );
  }


  Widget _buildGoMainFeatured() {
    return new Container(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Text(
            "gogames",
            style: new TextStyle(fontFamily: "NeoSansBold",
            fontWeight: FontWeight.bold,
            fontSize: 20),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 8.0),
          ),
          new Text(
            "Mau dapetin hadiah Rp20 juta ? Main game seru ini, kuy!",
            style: new TextStyle(fontFamily: "NeoSansBold"),
          ),
          new SizedBox(
            height: 172.0,
            child: FutureBuilder<List>(
                future: fetchMain(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return new ListView.builder(
                      itemCount: snapshot.data.length,
                      padding: EdgeInsets.only(top: 12.0),
                      physics: new ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return _rowGoMainFeatured(snapshot.data[index]);
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

 
Widget _rowGoMainFeatured(Game game) {
    return new Container(
      margin: EdgeInsets.only(right: 16.0),
      child: new Column(
        children: <Widget>[
          new ClipRRect(
            borderRadius: new BorderRadius.circular(8.0),
            child: new Image.asset(
              game.image,
              width: 132.0,
              height: 132.0,
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 8.0),
          ),
          new Text(
            game.title,
          ),
        ],
      ),
    );
  }


  Future<List<Game>> fetchMain() async {
    List<Game> _goMainFeaturedList = [];
    _goMainFeaturedList.add(
        new Game(title: "Jumping Cube", image: "assets/images/game1.jpg"));
    _goMainFeaturedList.add(
        new Game(title: "Main Burung", image: "assets/images/game2.jpg"));
    _goMainFeaturedList.add(
        new Game(title: "Racing Mania Mantap", image: "assets/images/game3.jpg"));
    _goMainFeaturedList.add(
        new Game(title: "Dewa Perang", image: "assets/images/game4.jpg"));
        
    return new Future.delayed(new Duration(seconds: 1), () {
      return _goMainFeaturedList;
    });
  }

  Widget _buildGoMiniFeatured() {
    return new Container(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 5.0, 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Text(
            "gogames",
            style: new TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "NeoSansBold"),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 2.0),
          ),
          new Text(
            "Mainkan mini games terbaru di GoGames, Powered by GameSnacks",
            style: new TextStyle(fontFamily: "NeoSansBold"),
          ),
          new SizedBox(
            height: 180.0,
            child: FutureBuilder<List>(
                future: fetchMini(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return new ListView.builder(
                      itemCount: snapshot.data.length,
                      padding: EdgeInsets.only(top: 5.0),
                      physics: new ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return _rowGoMiniFeatured(snapshot.data[index]);
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
          )
        ],
      ),
    );
  }

  Widget _rowGoMiniFeatured(Games games) {
    return new Container(
      margin: EdgeInsets.only(right: 16.0),
      child: new Column(
        children: <Widget>[
          new ClipRRect(
            borderRadius: new BorderRadius.circular(15.0),
            child: new Image.asset(
              games.image,
              width: 300.0,
              height: 149.0,
              
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 8.0),
          ),
          new Text(
            games.title,
          ),
        ],
      ),
    );
  }

  Future<List<Games>> fetchMini() async {
    List<Games> _goMiniFeaturedList = [];
    _goMiniFeaturedList.add(new Games(
        image: "assets/images/g1.jpg",
        title: "ZUMA",
        // content:
        //     "Beli Tiket Sekarang, Nontonnya Bisa Nanti! Promo Nonton Cuma 25rban!"
            )
            );
    _goMiniFeaturedList.add(new Games(
        image: "assets/images/g2.jpg",
        title: "INSANIQUARIUM",
        // content:
        //     "Dapatkan Paket Monster GoTix + GoPlay + GoFood Cuma 29 Ribuan!"
            ));
    _goMiniFeaturedList.add(new Games(
        image: "assets/images/g3.jpg",
        title: "PLANT VS ZOMBIE",
        // content: "Diskon 50% Nonton Bioskop Cinepolis Bareng Teteh Geulis!"
        ));

    return new Future.delayed(new Duration(seconds: 1), () {
      return _goMiniFeaturedList;
    });
  }

  Widget _buildGoTvFeatured() {
    return new Container(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 5.0, 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Text(
            "gogames",
            style: new TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "NeoSansBold"),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 2.0),
          ),
          new Text(
            "Buruan sikat promonya sebelum terlambat!",
            style: new TextStyle(fontFamily: "NeoSansBold"),
          ),
          new SizedBox(
            height: 180.0,
            child: FutureBuilder<List>(
                future: fetchTv(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return new ListView.builder(
                      itemCount: snapshot.data.length,
                      padding: EdgeInsets.all(5.0),
                      physics: new ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return _rowGoTvFeatured(snapshot.data[index]);
                      },
                    );
                  }
                  return Center(
                    child: SizedBox(
                        width: 40.0,
                        height: 30.0,
                        child: const CircularProgressIndicator()),
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget _rowGoTvFeatured(Gamep gamep) {
    return new Container(
      margin: EdgeInsets.only(right: 16.0),
      child: new Column(
        children: <Widget>[
          new ClipRRect(
            borderRadius: new BorderRadius.circular(15.0),
            child: new Image.asset(
              gamep.image,
              width: 300.0,
              height: 144.0,
              
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 8.0),
          ),
          new Text(
            gamep.title,
          ),
        ],
      ),
    );
  }
 
  Future<List<Gamep>> fetchTv() async {
    List<Gamep> _goTvFeaturedList = [];
    _goTvFeaturedList.add(new Gamep(
        image: "assets/images/pg1.jpg",
        title: "Promo kuy!",
        // content:
        //     "Beli Tiket Sekarang, Nontonnya Bisa Nanti! Promo Nonton Cuma 25rban!"
            )
            );
    _goTvFeaturedList.add(new Gamep(
        image: "assets/images/pg2.jpg",
        title: "Beli voucher Bonus Diamond!",
        // content:
        //     "Dapatkan Paket Monster GoTix + GoPlay + GoFood Cuma 29 Ribuan!"
            ));
    _goTvFeaturedList.add(new Gamep(
        image: "assets/images/pg3.JPG",
        title: "Main di Gogames Dapet 20 JUTAAA!",
        // content: "Diskon 50% Nonton Bioskop Cinepolis Bareng Teteh Geulis!"
        ));

    return new Future.delayed(new Duration(seconds: 1), () {
      return _goTvFeaturedList;
    });
  }
}