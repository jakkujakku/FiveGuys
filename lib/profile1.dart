import 'package:flutter/material.dart';

import 'main.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Map> junwoo = [
    {'name': 'updated name', 'id': 1, 'value': 9876, 'num': 456.789},
  ];

  List<Map> chulwoo = [
    {'name': 'updated name', 'id': 1, 'value': 9876, 'num': 456.789},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstPage()),
            );
          },
          child: Text(
            " FIVE GUYS ",
            style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.w900,
                fontSize: 30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.all(Radius.circular(20)),
                        color: Colors.white),
                    height: 150,
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.network(
                              "https://static.vecteezy.com/system/resources/previews/020/486/924/original/business-man-silhouette-icon-human-face-portrait-glyph-pictogram-male-personal-profile-icon-men-user-s-avatar-businessman-manager-office-people-sign-isolated-illustration-vector.jpg",
                              width: 100,
                              height: 150,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 26,
                            ),
                            Text(
                              "N A M E : $chulwoo[$name]",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 19,
                                  wordSpacing: 4),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "M B T I  :",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20,
                                  wordSpacing: 4),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "D A T E  :",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 19,
                                  wordSpacing: 4),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.redAccent,
                      )
                    ],
                  ),
                ]),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.all(Radius.circular(20)),
                      color: Colors.white),
                  height: 550,
                ),
              ],
            ),
          ),
          color: Colors.red,
        ),
      ),
    );
  }
}




//only(
                  //bottomLeft: const Radius.circular(30.0),
                  //bottomRight: const Radius.circular(30.0)),