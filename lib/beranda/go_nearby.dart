import 'package:flutter/material.dart';

class GoNearby extends StatefulWidget {
  @override
  _GoNearbyState createState() => _GoNearbyState();
}

class _GoNearbyState extends State<GoNearby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            iconTheme: IconThemeData(
          color: Colors.black,
          ),
            backgroundColor: Colors.white,
            title: Text(
              'Rekan usaha kami di sekitar:',
              style: TextStyle(color: Colors.black),
            ),
            actions: <Widget>[
              new Image.asset(
                "assets/icons/pensil.png",
                width: 40.0,
              ),
            ],
          ),
          body: ListView(
            children: <Widget>[ 
              SizedBox(height: 15.0,),
              new Card(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)),
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Cari tempat di sekitarmu...",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                       SizedBox(height: 65.0,),
                       RaisedButton(
                         onPressed: (){},
                         child: Text("Ada Promonya"),
                       ),
                       RaisedButton(
                         onPressed: (){},
                         child: Text("Masih Buka"),
                       ),
                    ],
                  ),
              ),
              ListLocation(
                icon: Icons.pin_drop,
                judul: "Nasi Uduk Budhe Ayu, Ruko...",
                lokasi: "Ruko Perum Grand Nusa Indah",
                pin: Icons.pin_drop,
                jarak: "180 m",
                warnaIcon: Colors.blue,
              ),
              ListLocation(
                icon: Icons.pin_drop,
                judul: "Rumah Makan Minang Ind...",
                lokasi: "Perumahan Grand Nusa Indah Blok...",
                pin: Icons.pin_drop,
                jarak: "280 m",
                warnaIcon: Colors.blue,
              ),
              ListLocation(
                icon: Icons.pin_drop,
                judul: "Rori John Z&Z, Grand Nusa ...",
                lokasi: "Perumahan Grand Nusa Indah, Blok ...",
                pin: Icons.pin_drop,
                jarak: "567 m",
                warnaIcon: Colors.blue,
              ),
              ListLocation(
                icon: Icons.pin_drop,
                judul: "Putrie Kue, Grand Nusa Inda...",
                lokasi: "Grand Nusa Indah, Clushter Sansiever...",
                pin: Icons.pin_drop,
                jarak: "609 m",
                warnaIcon: Colors.blue,
              ),
              ListLocation(
                icon: Icons.pin_drop,
                judul: "Motoplus  -  Jonggol",
                lokasi: "Jl. Raya Cileungsi Jonggol, Desa Gan...",
                pin: Icons.pin_drop,
                jarak: "634 m",
                warnaIcon: Colors.blue,
              ),
              ListLocation(
                icon: Icons.pin_drop,
                judul: "TOKO PANCING",
                lokasi: "Unnamed Road, Mampir, Kec. Cileung...",
                pin: Icons.pin_drop,
                jarak: "808 m",
                warnaIcon: Colors.blue,
              ),
              ListLocation(
                icon: Icons.pin_drop,
                judul: "PESEL LELE 89",
                lokasi: "Villa Cileungsi Asri, Mampir, Cileung...",
                pin: Icons.pin_drop,
                jarak: "934 km",
                warnaIcon: Colors.blue,
              ),
              ListLocation(
                icon: Icons.pin_drop,
                judul: "Dapoer Rafania",
                lokasi: "Perum Puri Harmoni 6 Blok F19 No5 ...",
                pin: Icons.pin_drop,
                jarak: "1.084 km",
                warnaIcon: Colors.blue,
              ),
              ListLocation(
                icon: Icons.pin_drop,
                judul: "Warung Ibu Eko, Cileungsi",
                lokasi: "Puri Cileungsi Jl. Bunga Nusantara...",
                pin: Icons.pin_drop,
                jarak: "1.121 km",
                warnaIcon: Colors.blue,
              ),
              ListLocation(
                icon: Icons.pin_drop,
                judul: "Bakmi Jawa D'Pawiro Kulin...",
                lokasi: "Puri Cileungsi, Blok Y5 No. 19A, ...",
                pin: Icons.pin_drop,
                jarak: "1.177 km",
                warnaIcon: Colors.blue,
              ),
              ListLocation(
                icon: Icons.pin_drop,
                judul: "SEAFOOD 99",
                lokasi: "Ambar graha Permai, Mampir, kec ...",
                pin: Icons.pin_drop,
                jarak: "1.231 km",
                warnaIcon: Colors.blue,
              ),
              ListLocation(
                icon: Icons.pin_drop,
                judul: "King Boba Gandoang, Cile...",
                lokasi: "Jl. Jayakarsa No. 69, Cileungsi ...",
                pin: Icons.pin_drop,
                jarak: "1.289 km",
                warnaIcon: Colors.blue,
              ),
            ],
          ),
    );
  }
}

class ListLocation extends StatelessWidget {
  ListLocation(
      {this.icon,
      this.gambar,
      this.judul,
      this.warnaIcon,
      this.lokasi,
      this.pin,
      this.jarak});
  final IconData icon;
  final String gambar;
  final String judul;
  final Color warnaIcon;
  final String lokasi;
  final IconData pin;
  final String jarak;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: warnaIcon.withOpacity(.3),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: new Icon(
              icon,
              size: 70,
              color: warnaIcon,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  judul,
                  style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                new Text(
                  lokasi,
                  style: TextStyle(fontSize: 17.0),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        pin,
                        size: 18,
                        color: Colors.blue,
                      ),
                      Text(
                        jarak,
                        style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}