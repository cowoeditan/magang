import 'package:flutter/material.dart';
import 'package:magang/beranda/beranda_model.dart';
import 'package:magang/beranda/beranda_gojek_appbar.dart';
import 'package:magang/constans.dart';

class MenuChat extends StatefulWidget {
  @override
  _MenuChatState createState() => _MenuChatState();
}

class _MenuChatState extends State<MenuChat> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.blue,
          title: new Center(
            child: new Text("Menu Chat",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ),
          actions: <Widget>[new Icon(Icons.search)],
        ),
        body: ListView(
          children: <Widget>[
            new BagianNama(
              nama: "Pilihan fitur",
            ),
            new MenuIcon(),
            new NamaChat(
              nama: "Chat kamu",
            ),
            new ListChat(),
            new ListChat2(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_comment),
          onPressed: (){},
          backgroundColor: Colors.greenAccent[700],
        ),
    );
  }
}

class BagianNama extends StatelessWidget {
  BagianNama({this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            nama,
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class MenuIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(3.0),
        child: Row(
          children: <Widget>[
            new Iconteks(
              icon: Icons.mail,
              teks: "Inbox",
              warnaIcon: Colors.orange,
            ),
            new Iconteks(
              icon: Icons.group,
              teks: "Grup baru",
              warnaIcon: Colors.green,
            ),
            new Iconteks(
              icon: Icons.call_split,
              teks: "Patungan",
              warnaIcon: Colors.blue[700],
            ),
            new Iconteks(
              icon: Icons.file_upload,
              teks: "Bayar",
              warnaIcon: Colors.blue[400],
            )
          ],
        ));
  }
}

class Iconteks extends StatelessWidget {
  Iconteks({this.icon, this.teks, this.warnaIcon});
  final IconData icon;
  final String teks;
  final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: warnaIcon.withOpacity(.4),
              borderRadius: BorderRadius.circular(23.0),
            ),
            child: new Icon(
              icon,
              size: 50.0,
              color: warnaIcon,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            teks,
            style: TextStyle(fontSize: 18.0),
          )
        ],
      ),
    );
  }
}

class NamaChat extends StatelessWidget {
  NamaChat({this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            nama,
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class ListChat extends StatefulWidget {
  @override
  _ListChatState createState() => _ListChatState();
}

class _ListChatState extends State<ListChat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          new Image.asset(
            "assets/icons/m.png",
            width: 70.0,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  "Mutia",
                  style: TextStyle(color: Colors.black, fontSize: 24.0),
                ),
                new Text(
                  "Hallo, saya membutuhka...",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                new Text(
            "16/06/20",
            style: TextStyle(color: Colors.grey, fontSize: 18.0),
          ),
              ],
            )
          )
        ],
      ),
    );
  }
}

class ListChat2 extends StatefulWidget {
  @override
  _ListChatState2 createState() => _ListChatState2();
}

class _ListChatState2 extends State<ListChat2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          new Image.asset(
            "assets/icons/f.png",
            width: 70.0,
          ),
          new Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  "Fikri",
                  style: TextStyle(color: Colors.black, fontSize: 24.0),
                ),
                new Text(
                  "Saya Ingin Pesan makanan",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
              ],
            ),
          ),
          new Text(
            "10/05/20",
            style: TextStyle(color: Colors.grey, fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}