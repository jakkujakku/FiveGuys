import 'package:fiveguys/profille.dart';
import 'package:fiveguys/profille.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class AButton extends StatelessWidget {
  const AButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Profile(foodName: "의정부부대버거A")),
            );
          },
          style: ElevatedButton.styleFrom(primary: Colors.white),
          child: Image.network(
            "https://www.fiveguys.co.kr/-/media/public-site/images/menu-images/menu-category-icons/fg-sandwiches-icon-01.ashx",
            height: 100,
            width: 60,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Container(
            child: Text(
              "의정부부대버거A",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

class BButton extends StatelessWidget {
  const BButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Profile(foodName: "의정부부대버거B")),
            );
          },
          style: ElevatedButton.styleFrom(primary: Colors.white),
          child: Image.network(
            "https://www.fiveguys.co.kr/-/media/public-site/images/menu-images/menu-category-icons/fg-burgers-icon-01.ashx",
            height: 100,
            width: 60,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Container(
            child: Text(
              "의정부부대버거B",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

class CButton extends StatelessWidget {
  const CButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Profile(foodName: "대구닭강정")),
            );
          },
          style: ElevatedButton.styleFrom(primary: Colors.white),
          child: Image.network(
            "https://www.fiveguys.co.kr/-/media/public-site/images/menu-images/menu-category-icons/fg-burgers-icon-01.ashx",
            height: 100,
            width: 60,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Container(
            child: Text(
              "대구따로버거",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

class DButton extends StatelessWidget {
  const DButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Profile(foodName: "남양주닭갈비버거")),
            );
          },
          style: ElevatedButton.styleFrom(primary: Colors.white),
          child: Image.network(
            "https://www.fiveguys.co.kr/-/media/public-site/images/menu-images/menu-category-icons/fg-burgers-icon-01.ashx",
            height: 100,
            width: 60,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Container(
            child: Text(
              "남양주닭갈비버거",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

class EButton extends StatelessWidget {
  const EButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Profile(foodName: "수원갈비버거")),
            );
          },
          style: ElevatedButton.styleFrom(primary: Colors.white),
          child: Image.network(
            "https://www.fiveguys.co.kr/-/media/public-site/images/menu-images/menu-category-icons/fg-burgers-icon-01.ashx",
            height: 100,
            width: 60,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Container(
            child: Text(
              "수원갈비버거",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
