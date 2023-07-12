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

Map<String, String> hawaiianBeaches = {
  'MBTI': 'ENTJ',
  'Big Island': 'Wailea Bay',
  'Kauai': 'Hanalei',
};

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FirstPage()));
            },
            color: Colors.redAccent,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "FIVE GUYS",
            style: const TextStyle(
                color: Colors.redAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const detail()));
              },
              icon: Icon(
                Icons.check_box,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 200),
              child: Column(
                children: [
                  Stack(children: [
                    Container(
                      decoration: new BoxDecoration(
                          borderRadius:
                              new BorderRadius.all(Radius.circular(20)),
                          color: Colors.white),
                      height: 350,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 26,
                              ),
                              Text(
                                "N A M E : ${hawaiianBeaches['MBTI']}",
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
                ],
              ),
            ),
            color: Colors.red,
            height: 850,
          ),
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 28,
            backgroundColor: Color.fromARGB(255, 20, 1, 1),
            child: Icon(
              Icons.check_circle_outline_rounded,
              color: Colors.white,
            ),
            onPressed: () {}));
  }
}




//only(
                  //bottomLeft: const Radius.circular(30.0),
                  //bottomRight: const Radius.circular(30.0)),



       //           Container(
         //           decoration: new BoxDecoration(
           //             borderRadius: new BorderRadius.all(Radius.circular(20)),
             //           color: Colors.white),
               //     height: 560,
                 // ),