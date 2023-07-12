import 'package:fiveguys/main.dart';
import 'package:fiveguys/profile1.dart';
import 'package:flutter/material.dart';

class detail extends StatelessWidget {
  const detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: BackButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Profile()));
        },
        color: Colors.redAccent,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.delete_outline_outlined),
          color: Colors.redAccent,
        ),
      ],
    ));
  }
}
