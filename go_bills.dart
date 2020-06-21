import 'package:flutter/material.dart';

class GoBills extends StatefulWidget {
  @override
  _GoBillsState createState() => _GoBillsState();
}

class _GoBillsState extends State<GoBills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Image.asset(
              "assets/gobills.png",
              height: 50.0,
              width: 100.0,
            ),
            new Container(
              padding: EdgeInsets.only(left: 140.0),
              child: new Row(
                children: <Widget>[
                  new Container(
                    height: 28.0,
                    width: 28.0,
                    padding: EdgeInsets.all(6.0),
                    child: new Icon(Icons.event_note, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Klik nama layanan di sini",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(20),
            elevation: 5,
            child: Image.asset("assets/banner_gobills.jpg"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/icons/pln.png",
                        height: 60.0, width: 60.0),
                    Text("PLN",
                        style: TextStyle(fontSize: 15, color: Colors.black))
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/icons/multifinance.png",
                        height: 60.0, width: 60.0),
                    Text("BPJS",
                        style: TextStyle(fontSize: 15, color: Colors.black))
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/icons/tvcable.png",
                        height: 60.0, width: 60.0),
                    Text("TV & Internet",
                        style: TextStyle(fontSize: 15, color: Colors.black))
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/icons/pdam.png",
                        height: 60.0, width: 60.0),
                    Text("PDAM",
                        style: TextStyle(fontSize: 15, color: Colors.black))
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/icons/postpaid.png",
                        height: 60.0, width: 60.0),
                    Text("Pascabayar",
                        style: TextStyle(fontSize: 15, color: Colors.black))
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/icons/money.png",
                        height: 60.0, width: 60.0),
                    Text("Multifinance",
                        style: TextStyle(fontSize: 15, color: Colors.black))
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/icons/insurance.png",
                        height: 60.0, width: 60.0),
                    Text("Asuransi",
                        style: TextStyle(fontSize: 15, color: Colors.black))
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/icons/gas.png",
                        height: 60.0, width: 60.0),
                    Text("Gas PGN",
                        style: TextStyle(fontSize: 15, color: Colors.black))
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/icons/pbb.png",
                        height: 60.0, width: 60.0),
                    Text("PBB",
                        style: TextStyle(fontSize: 15, color: Colors.black))
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/icons/pkb.png",
                        height: 60.0, width: 60.0),
                    Text("PKB",
                        style: TextStyle(fontSize: 15, color: Colors.black))
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/icons/retribution.png",
                        height: 60.0, width: 60.0),
                    Text("Retribusi",
                        style: TextStyle(fontSize: 15, color: Colors.black))
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/icons/tax.png",
                        height: 60.0, width: 60.0),
                    Text("Pajak Daerah",
                        style: TextStyle(fontSize: 15, color: Colors.black))
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/icons/sekolah.png",
                        height: 60.0, width: 60.0),
                    Text("Sekolah",
                        style: TextStyle(fontSize: 15, color: Colors.black))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
