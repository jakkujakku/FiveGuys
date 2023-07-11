import 'package:flutter/material.dart';

import 'main.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Stack(children: [
            Container(
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(50.0),
                      bottomRight: const Radius.circular(50.0)),
                  color: Colors.white),
            ),
            Row(
              children: [
                Container(
                  alignment: MainAxisAlignment.start,
                  child: Image.network(
                    "https://static.vecteezy.com/system/resources/previews/020/486/924/original/business-man-silhouette-icon-human-face-portrait-glyph-pictogram-male-personal-profile-icon-men-user-s-avatar-businessman-manager-office-people-sign-isolated-illustration-vector.jpg",
                    width: 180,
                  ),
                ),
                Container(
                    child: Column(
                  children: [
                    Text("NAME :"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("MBTI :"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("DATE :"),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                )),
              ],
            ),
          ]),
        ),
        color: Colors.red,
      ),
    );
  }
}
