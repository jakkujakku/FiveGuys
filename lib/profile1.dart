import 'package:fiveguys/profile.dart';
import 'package:flutter/material.dart';

import 'detail.dart';
import 'main.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

// List<dynamic> list = List<dynamic>(); // List타입 변수 초기화

Map<String, String> member = {
  'Nickname': '대구닭갈비',
  'Name': 'Kim Jun Woo',
  'ExpirationDate': '2023.12.31',
  'Ingredients': 'ENTJ',
  'Origin': '대구',
  'ImageUrl': 'https://avatars.githubusercontent.com/u/89556301?v=4'
};

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Back버튼
        leading: BackButton(
          color: Colors.redAccent,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstPage()),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const detail()));
            },
            icon: Icon(
              Icons.edit_outlined,
              color: Colors.redAccent,
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          " FIVE GUYS ",
          style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.w900,
              fontSize: 30),
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
                          Padding(
                            padding: EdgeInsets.only(
                                left: 16.0, right: 10.0, top: 16.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Image.network(
                                "https://avatars.githubusercontent.com/u/89556301?v=4",
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 26,
                            ),
                            Text(
                              "N A M E : ${member['Name']}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 19,
                                  wordSpacing: 4),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "M B T I  : ${member['Ingredients']}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20,
                                  wordSpacing: 4),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "D A T E  : ${member['ExpirationDate']}",
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