import 'package:fiveguys/profile.dart';
import 'package:flutter/material.dart';

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
          // Back버튼 생성
          leading: BackButton(
            color: Colors.redAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstPage()),
              );
            },
          ),
          // Edit 버튼 생성
          actions: [
            IconButton(
                icon: Icon(Icons.edit),
                color: Colors.redAccent,
                onPressed: () {
                  print("Edit 버튼 눌렀다.");
                })
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
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 5,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(150.0)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(145.0),
                        child: Image.network(
                          "https://avatars.githubusercontent.com/u/89556301?v=4",
                          width: 300,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Stack(children: [
                    Container(
                        decoration: new BoxDecoration(
                            borderRadius:
                                new BorderRadius.all(Radius.circular(20)),
                            color: Colors.white),
                        height: 210),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 16.0, right: 10.0, top: 16.0),
                              // child: ClipRRect(
                              //   borderRadius: BorderRadius.circular(50.0),
                              //   child: Image.network(
                              //     "https://avatars.githubusercontent.com/u/89556301?v=4",
                              //     width: 100,
                              //     height: 100,
                              //     fit: BoxFit.cover,
                              //   ),
                              // ),
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
                                "NICKNAME : ${member['Nickname']}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19,
                                    wordSpacing: 4),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "NAME  : ${member['Name']}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    wordSpacing: 4),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "EXPIRATIONDATE : ${member['ExpirationDate']}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19,
                                    wordSpacing: 4),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "INGREDIENTS : ${member['Ingredients']}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19,
                                    wordSpacing: 4),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "ORIGIN : ${member['Origin']}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
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
                    height: 15,
                  ),
                  Stack(children: [
                    Container(
                        decoration: new BoxDecoration(
                            borderRadius:
                                new BorderRadius.all(Radius.circular(20)),
                            color: Colors.white),
                        height: 210),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 16.0, right: 10.0, top: 16.0),
                              // child: ClipRRect(
                              //   borderRadius: BorderRadius.circular(50.0),
                              //   child: Image.network(
                              //     "https://avatars.githubusercontent.com/u/89556301?v=4",
                              //     width: 100,
                              //     height: 100,
                              //     fit: BoxFit.cover,
                              //   ),
                              // ),
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
                                "NICKNAME : ${member['Nickname']}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19,
                                    wordSpacing: 4),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "NAME  : ${member['Name']}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    wordSpacing: 4),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "EXPIRATIONDATE : ${member['ExpirationDate']}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19,
                                    wordSpacing: 4),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "INGREDIENTS : ${member['Ingredients']}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19,
                                    wordSpacing: 4),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "ORIGIN : ${member['Origin']}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
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
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 28,
            backgroundColor: Color.fromARGB(255, 20, 1, 1),
            child: Icon(
              Icons.star_border_outlined,
              color: Colors.white,
            ),
            onPressed: () {}));
  }
}

//only(
//bottomLeft: const Radius.circular(30.0),
//bottomRight: const Radius.circular(30.0)),
