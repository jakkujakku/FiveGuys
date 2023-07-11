import 'package:flutter/cupertino.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            decoration: new BoxDecoration(
                borderRadius: new BorderRadius.only(
                    bottomLeft: const Radius.circular(50.0),
                    bottomRight: const Radius.circular(50.0)),
                color: Colors.white),
          ),
        ),
        color: Colors.red,
      ),
    );
  }
}
