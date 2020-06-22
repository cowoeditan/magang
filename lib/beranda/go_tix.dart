import 'package:flutter/material.dart';
import 'package:magang/constans.dart';
import 'package:magang/beranda/beranda_model.dart';

class GoTix extends StatefulWidget {
  
  @override
  _GoTixState createState() => _GoTixState();
}

class _GoTixState extends State<GoTix> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GO-TIX',
      home: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: new AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              title: Row(
                children: <Widget>[
                  Icon(
                    Icons.local_play,
                    color: GojekPalette.menuTix,
                  ),
                  Text(
                    "GO-TIX",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.only(left: 270.0),
                    child: new Row(
                      children: <Widget>[
                        new Container(
                          // height: 25,
                          // width: 25,
                          // padding: EdgeInsets.all(0),
                          child: new Icon(
                            Icons.confirmation_number,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
          body:
              //  Card(
              //    elevation: 4,
              //    shape:
              //    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              //    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              //    child: Padding(
              //      padding: const EdgeInsets.symmetric(horizontal: 8),
              //      child: TextField(
              //        decoration: InputDecoration(
              //          border: InputBorder.none,
              //          prefixIcon: Icon(Icons.search),
              //          hintText: "mau ngapain hari ini?",
              //          hintStyle: TextStyle(color: Colors.grey),
              //        ),
              //      ),
              //      ),
              //  ),

              ListView(
            children: <Widget>[
              AppBar(

                  // iconTheme: IconThemeData( color: Colors.black),

                  backgroundColor: Colors.white,
                  title: Column(
                    children: <Widget>[
                      // Title(color: Colors.black, child:

                      // Text(
                      // 'Jakarta', style: TextStyle( color: Colors.black, fontWeight: FontWeight.bold),
                      //  textAlign: TextAlign.left,
                      // ), ),
                      // Title(color: Colors.black, child:
                      // Text('Lagi apa disini?', style: TextStyle( color: Colors.black,fontSize: 15 ,fontWeight: FontWeight.normal),
                      // textAlign: TextAlign.left,
                      // )),

                      ListTile(
                        title: Text(
                          'Jakarta',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        subtitle: Text('Lagi apa disini?'),
                        trailing: Icon(
                          Icons.tune,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )),

              // AppBar(
              //   backgroundColor: Colors.white,
              //   title: Text(
              //     'Lagi apa disini?', style: TextStyle( color: Colors.black,fontSize: 12),
              //     textAlign: TextAlign.left,
              //   ),
              // ),

              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      ),
                      hintText: "mau ngapain hari ini?",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),

              new Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 10.0),
                child: new Column(
                  children: <Widget>[
                    _buildGoTixFeatured(),
                    _buildGoTixaFeatured(),

                 

              // new Container(
              // width: 250 ,
              // height: 150,
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   borderRadius: BorderRadius.circular(16),
              //   boxShadow: [BoxShadow(
              //     color: Colors.black.withOpacity(0.2),
              //     blurRadius: 6,
              //     offset: Offset(1, 1),
              //   )]
              // ),
              // child: Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: <Widget>[
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: <Widget>[
              //         Container(
              //           width: 100,
              //           height: 150,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.only(
              //               topLeft: Radius.circular(16),
              //               topRight: Radius.circular(16)
              //             ),
              //             // image: DecorationImage(
              //             //   image: NetworkImage(imageURL))
              //           ),
              //         )
              //       ],
              //     )
              //   ],
              // ),
                
              // )
                   
                  ],
                ),
              ),

               
            ],
            
          )
          
          ),
    );
  }

  Widget _buildGoTixFeatured() {
    return new Container(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 5.0, 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Text(
            "HOT DEALS",
            style: new TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "NeoSansBold"),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 2.0),
          ),
          new Text(
            "Promo terbaru!",
            style: new TextStyle(fontFamily: "NeoSansBold"),
          ),
          new SizedBox(
            height: 180.0,
            child: FutureBuilder<List>(
                future: fetchTix(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return new ListView.builder(
                      itemCount: snapshot.data.length,
                      padding: EdgeInsets.only(top: 5.0),
                      physics: new ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return _rowGoTixFeatured(snapshot.data[index]);
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

  Widget _rowGoTixFeatured(Tix tix) {
    return new Container(
      margin: EdgeInsets.only(right: 16.0),
      child: new Column(
        children: <Widget>[
          new ClipRRect(
            borderRadius: new BorderRadius.circular(15.0),
            child: new Image.asset(
              tix.image,
              width: 300.0,
              height: 150.0,
              
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 8.0),
          ),
          new Text(
            tix.title,
          ),
        ],
      ),
    );
  }

Widget _buildGoTixaFeatured(){
  return new Container(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 5.0, 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Text(
            "Jelajahi Kategori",
            style: new TextStyle( fontSize: 16, fontWeight: FontWeight.bold, fontFamily: "NeoSansBold"),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 2.0),
          ),
          // new Text(
          //   "Promo Film Terlaris",
          //   style: new TextStyle(fontFamily: "NeoSansBold"),
          // ),
          new SizedBox(
            height: 180.0,
            child: FutureBuilder<List>(
              future: fetchTixa(),
              builder: (context, snapshot) {
                if (snapshot.hasData){
                  return new ListView.builder(
                    itemCount: snapshot.data.length,
                    padding: EdgeInsets.only(top: 5.0),
                    physics: new ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return _rowGoTixaFeatured(snapshot.data[index]);
                    },
                  );
                }
                return Center(
                  child:  SizedBox(
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

Widget _rowGoTixaFeatured( Tixa tixa){
  return new Container(
    margin: EdgeInsets.only(right: 16.0),
    child: new Column(
      children: <Widget>[
        new ClipRRect(
          borderRadius: new BorderRadius.circular(8.0),
          child: new Image.asset(
            tixa.image,
            width: 132.0,
            height: 132.0,
          ),
        ),
        new Padding(
          padding: EdgeInsets.only(top: 8.0),
          ),
          new Text(
            tixa.title,
          ),
      ],
    ),
  );
}

  Future<List<Tix>> fetchTix() async {
    List<Tix> _goTixFeaturedList = [];
    _goTixFeaturedList.add(new Tix(
        image: "assets/images/t1.jpg",
        title: "Cuma 25rb an!",
        // content:
        //     "Beli Tiket Sekarang, Nontonnya Bisa Nanti! Promo Nonton Cuma 25rban!"
            )
            );
    _goTixFeaturedList.add(new Tix(
        image: "assets/images/t2.jpg",
        title: "Streaming GoPlay dengan GoTix!",
        // content:
        //     "Dapatkan Paket Monster GoTix + GoPlay + GoFood Cuma 29 Ribuan!"
            ));
    _goTixFeaturedList.add(new Tix(
        image: "assets/images/t3.jpg",
        title: "Rencanain Liburan Sekarang!",
        // content: "Diskon 50% Nonton Bioskop Cinepolis Bareng Teteh Geulis!"
        ));
    _goTixFeaturedList.add(new Tix(
        image: "assets/images/t4.jpg",
        title: "FLIX Cinema 25rb an Aja!",
        // content:
        //     "Di GO-TIX, Sekarang Kamu Bisa Pesen Makanan dan Minuman CGV loh!"
            ));
    _goTixFeaturedList.add(new Tix(
        image: "assets/images/t5.jpg",
        title: "Liburan Lagi!",
        // content:
        //     "Diskon 30% Buat Nonton Tiap Minggu Dari BUCIN: Rabu Cinepolis"
            ));

    return new Future.delayed(new Duration(seconds: 1), () {
      return _goTixFeaturedList;
    });
  }

  Future<List<Tixa>> fetchTixa() async {
    List<Tixa> _goTixaFeaturedList = [];
    _goTixaFeaturedList.add(new Tixa(
        image: "assets/images/p1.jpg",
        title: "NANO Fest!",
        // content:
        //     "Beli Tiket Sekarang, Nontonnya Bisa Nanti! Promo Nonton Cuma 25rban!"
            )
            );
    _goTixaFeaturedList.add(new Tixa(
        image: "assets/images/p2.jpg",
        title: "Atraksi lokal", 
        // content:
        //     "Dapatkan Paket Monster GoTix + GoPlay + GoFood Cuma 29 Ribuan!"
            ));
    _goTixaFeaturedList.add(new Tixa(
        image: "assets/images/p3.jpg",
        title: "Atraksi internasional",
        // content: "Diskon 50% Nonton Bioskop Cinepolis Bareng Teteh Geulis!"
        ));
    _goTixaFeaturedList.add(new Tixa(
        image: "assets/images/p4.jpg",
        title: "Workshop",
        // content:
        //     "Di GO-TIX, Sekarang Kamu Bisa Pesen Makanan dan Minuman CGV loh!"
            ));
    _goTixaFeaturedList.add(new Tixa(
        image: "assets/images/p5.jpg",
        title: "Fun Activities",
        // content:
        //     "Diskon 30% Buat Nonton Tiap Minggu Dari BUCIN: Rabu Cinepolis"
            ));
    _goTixaFeaturedList.add(new Tixa(
        image: "assets/images/p6.jpg",
        title: "Voucher Diskon",
        // content:
        //     "Diskon 30% Buat Nonton Tiap Minggu Dari BUCIN: Rabu Cinepolis"
            ));

    return new Future.delayed(new Duration(seconds: 1), () {
      return _goTixaFeaturedList;
    });
  }
}
