// import 'package:flutter/material.dart';
// // import 'package:gojek_sure/go_sure.dart';

// //import 'package:hello/homepage.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {

import 'package:flutter/material.dart';

class GoSure extends StatefulWidget {
  @override
  _GoSureState createState() => _GoSureState();
}

class _GoSureState extends State<GoSure> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              leading: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              title: Container(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.add_box,
                      color: Colors.lightBlueAccent,
                    ),
                    Text(
                      "gosure",
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ],
                ),
              )),
          body: Container(
            margin: EdgeInsets.all(20),
            child: Gosure(),
          )),
    );
  }
}

class Gosure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Image.asset("assets/ico_gosure.jpg",width: 70,height: 70,),
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.security,
                        color: Colors.lightBlueAccent,
                      ),
                      Text(
                        "gosure",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Asuransi Produk",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal),
                ),
                Container(
                  // color: Colors.white,
                  // margin: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    children: <Widget>[
                      Container(
                        // margin: EdgeInsets.fromLTRB(0, 10, 15, 10),
                        margin: EdgeInsets.only(right: 15),
                        height: 200,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 6,
                                  offset: Offset(1, 1))
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  height: 150,
                                  // child:new Image.asset("assets/go_sure1.jpeg") ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                    ),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/go_sure1.jpeg'),
                                        fit: BoxFit.fill),
                                  ),
                                ),

                                //  Text("Bawah")
                              ],
                            ),
                            // Image.asset("assets/go_sure1.jpeg",height: 100,),
                            Container(
                                margin:
                                    EdgeInsets.only(left: 15, right: 0, top: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Perlindungan Layar Ponsel",
                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "PasarPolis",
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        height: 200,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 6,
                                  offset: Offset(1, 1))
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  height: 150,
                                  // child:new Image.asset("assets/go_sure1.jpeg") ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                    ),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/go_sure2.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                ),

                                //  Text("Bawah")
                              ],
                            ),
                            Container(
                                margin:
                                    EdgeInsets.only(left: 15, right: 0, top: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Perlindungan Motor",
                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "PasarPolis",
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.security,
                        color: Colors.lightBlueAccent,
                      ),
                      Text(
                        "gosure",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Kesehatan dan Jiwa",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal),
                ),
                Container(
                  // color: Colors.white,
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        height: 200,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 6,
                                  offset: Offset(1, 1))
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  height: 150,
                                  // child:new Image.asset("assets/go_sure1.jpeg") ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                    ),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/go_sure3.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                ),

                                //  Text("Bawah")
                              ],
                            ),
                            Container(
                                margin:
                                    EdgeInsets.only(left: 0, right: 0, top: 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Asuransi Jiwa",
                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "PasarPolis",
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 6,
                                  offset: Offset(1, 1))
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  height: 150,
                                  // child:new Image.asset("assets/go_sure1.jpeg") ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                    ),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/go_sure4.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                ),

                                //  Text("Bawah")
                              ],
                            ),
                            Container(
                                margin:
                                    EdgeInsets.only(left: 15, right: 0, top: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Asuransi Rawat Inap Rumah Sakit",
                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "PasarPolis",
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.security,
                        color: Colors.lightBlueAccent,
                      ),
                      Text(
                        "gosure",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Perjalanan",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal),
                ),
                Container(
                  // color: Colors.white,
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 15, bottom: 10),
                        height: 200,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 6,
                                  offset: Offset(1, 1))
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  height: 150,
                                  // child:new Image.asset("assets/go_sure1.jpeg") ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                    ),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/go_sure6.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                ),

                                //  Text("Bawah")
                              ],
                            ),
                            Container(
                                margin:
                                    EdgeInsets.only(left: 15, right: 0, top: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Perlindungan Penerbangan",
                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "PasarPolis",
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 6,
                                  offset: Offset(1, 1))
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  height: 150,
                                  // child:new Image.asset("assets/go_sure1.jpeg") ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                    ),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/go_sure7.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                ),

                                //  Text("Bawah")
                              ],
                            ),
                            Container(
                                margin:
                                    EdgeInsets.only(left: 15, right: 0, top: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Perlindungan Kereta Api",
                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "PasarPolis",
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // Container(
                //   child: Row(
                //     children: <Widget>[
                //       Icon(
                //         Icons.security,
                //         color: Colors.lightBlueAccent,
                //       ),
                //       Text(
                //         "gosure",
                //         style: TextStyle(
                //             fontStyle: FontStyle.normal,
                //             fontWeight: FontWeight.w700,
                //             fontSize: 20),
                //       ),
                //     ],
                //   ),
                // ),

                Container(
                  // color: Colors.white,
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 6,
                                  offset: Offset(1, 1))
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 300,
                                  height: 150,
                                  // child:new Image.asset("assets/go_sure1.jpeg") ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                    ),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/go_sure8.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                ),

                                //  Text("Bawah")
                              ],
                            ),
                            Container(
                                margin:
                                    EdgeInsets.only(left: 15, right: 0, top: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Portal Claim",
                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "Cara Mudah Untuk Claim Perlindungan Kamu",
                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
