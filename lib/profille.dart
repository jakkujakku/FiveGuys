import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'editPage.dart';

class Profile extends StatefulWidget {
  final String foodName;

  const Profile({Key? key, required this.foodName}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Map<String, String> foodDetails = {};

  @override
  void initState() {
    super.initState();

    switch (widget.foodName) {
      case "의정부부대버거A":
        foodDetails = {
          '이름': '조계성',
          '제조년월': '1998.01.05',
          '성분': 'INTJ',
          '원산지': '의정부',
          '영양정보': 'Omega3',
        };
        break;

      case "의정부부대버거B":
        foodDetails = {
          '이름': '박철우',
          '유통기한': '1993.04.18',
          '성분': 'INTP',
          '원산지': '의정부',
          '영양정보': 'Carbohyrate',
        };
        break;

      case "대구닭강정":
        foodDetails = {
          '이름': '김준우',
          '유통기한': '1998.06.29',
          '성분': 'ENTJ',
          '원산지': '대구',
          '영양정보': 'Iron content',
        };
        break;

      case "남양주닭갈비버거":
        foodDetails = {
          '이름': '이시영',
          '유통기한': '1989.04.15',
          '성분': 'ENFJ',
          '원산지': '남양주',
          '영양정보': 'Hemoglobin',
        };
        break;

      case "수원갈비버거":
        foodDetails = {
          '이름': '조재민',
          '유통기한': '1996.10.25',
          '성분': 'INFP',
          '원산지': '수원',
          '영양정보': 'Protein',
        };
        break;

      default:
        foodDetails = {
          'Name': '기본음식',
          'Date': '2023.01.01',
          'Taste': '기본맛',
          'Origin': '기본',
        };
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.redAccent,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            color: Colors.redAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => edit()),
              );
            },
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          " FIVE GUYS ",
          style: TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.w900,
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.redAccent,
          height: 2000,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Column(
              children: [
                Stack(
                  children: [
                    Center(
                      child: Container(
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.all(
                            Radius.circular(200),
                          ),
                          color: Colors.white,
                        ),
                        height: 300,
                        width: 300,
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 65.0,
                                right: 30.0,
                                top: 10.0,
                                bottom: 10,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(150.0),
                                child: Image.network(
                                  "https://avatars.githubusercontent.com/u/89556301?v=4",
                                  width: 280,
                                  height: 280,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Container(
                          height: 60,
                          width: 380,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 0.5),
                        child: Text(
                          "이름 : ${foodDetails['이름']}",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 19,
                              wordSpacing: 4),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Container(
                          height: 60,
                          width: 380,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 0.5),
                        child: Text(
                          "제조년월 : ${foodDetails['제조년월']}",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 19,
                              wordSpacing: 4),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Container(
                          height: 60,
                          width: 380,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 0.5),
                        child: Text(
                          "성분 : ${foodDetails['성분']}",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 19,
                              wordSpacing: 4),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Container(
                          height: 60,
                          width: 380,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 0.5),
                        child: Text(
                          "원산지 : ${foodDetails['원산지']}",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 19,
                              wordSpacing: 4),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Container(
                          height: 60,
                          width: 380,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 0.5),
                        child: Text(
                          "영양정보 : ${foodDetails['영양정보']}",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 19,
                              wordSpacing: 4),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
