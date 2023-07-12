import 'package:fiveguys/edit.dart';
import 'package:flutter/material.dart';
import 'edit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 40.0,
                  ),
                  child: Image.network(
                    "https://i.ibb.co/Gnmk7yV/2023-07-11-9-26-14.pngp",
                    height: 400,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Profile(foodName: "의정부부대버거A")),
                              );
                            },
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
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
                      ),
                      Spacer(),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Profile(foodName: "의정부부대버거B")),
                              );
                            },
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
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
                      ),
                      // ...
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Profile(foodName: "대구닭강정")),
                              );
                            },
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            child: Image.network(
                              "https://www.fiveguys.co.kr/-/media/public-site/images/menu-images/menu-category-icons/fg-fries-icon-01.ashx",
                              height: 100,
                              width: 60,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Container(
                              child: Text(
                                "대구닭강정",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Profile(foodName: "남양주 닭갈비")),
                              );
                            },
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            child: Image.network(
                              "https://www.fiveguys.co.kr/-/media/public-site/images/menu-images/menu-category-icons/fg-drinks-icon-01.ashx",
                              height: 100,
                              width: 60,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Container(
                              child: Text(
                                "남양주 닭갈비",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
          'Name': '버거A',
          'Date': '2023.12.31',
          'Taste': '매운맛',
          'Origin': '의정부',
        };
        break;

      case "의정부부대버거B":
        foodDetails = {
          'Name': '버거B',
          'Date': '2023.11.30',
          'Taste': '담백한맛',
          'Origin': '서울',
        };
        break;

      case "대구닭강정":
        foodDetails = {
          'Name': '닭강정',
          'Date': '2023.10.30',
          'Taste': '달달한맛',
          'Origin': '대구',
        };
        break;

      case "남양주 닭갈비":
        foodDetails = {
          'Name': '닭갈비',
          'Date': '2023.09.30',
          'Taste': '향긋한맛',
          'Origin': '남양주',
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      height: 150,
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.0,
                                right: 10.0,
                                top: 16.0,
                              ),
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
                      ],
                    ),
                    Divider(
                      color: Colors.redAccent,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 26,
                      ),
                      Text(
                        "이름 : ${foodDetails['Name']}",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 19,
                            wordSpacing: 4),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "성분 : ${foodDetails['Taste']}",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            wordSpacing: 4),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "유통기한 : ${foodDetails['Date']}",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 19,
                            wordSpacing: 4),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "원산지 : ${foodDetails['Origin']}",
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
