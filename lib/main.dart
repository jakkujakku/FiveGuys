import 'package:fiveguys/profile.dart';
import 'package:fiveguys/profile1.dart';
import 'package:flutter/material.dart';
import 'package:fiveguys/profile1.dart';

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
  const FirstPage({super.key});

  // This widget is the root of your application.
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

                  // Secret 메뉴 이미지
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
                      Container(
                        child: Column(
                          children: [
                            // 팀장
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Profile()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white),
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Text(
                                      "(New)",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.red),
                                      textAlign: TextAlign.center,
                                    ),
                                    top: 3,
                                    left: 4,
                                    right: 5,
                                  ),
                                  Image.network(
                                    "https://www.fiveguys.co.kr/-/media/public-site/images/menu-images/menu-category-icons/fg-sandwiches-icon-01.ashx",
                                    height: 100,
                                    width: 60,
                                  ),
                                ],
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
                      ),
                      Spacer(),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // String currentTitle ==
                              //     "의정부부대거A"; // Replace with the actual current title of the button
                              // if (currentTitle == "dksud") {
                              //   pattern => value,
                              // }) {
                              //   pattern => value,
                              // }) {
                              //   Profile; // Example title A
                              //   Text("Title B"); // Example title B
                              // } else {
                              //   Text("Default Title"); // Example default title
                              // }

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile()),
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
                      Spacer(),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile()),
                              );
                            },
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            child: Image.network(
                              "https://www.fiveguys.co.kr/-/media/public-site/images/menu-images/menu-category-icons/fg-dogs-icon-01.ashx",
                              height: 100,
                              width: 60,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Container(
                              child: Text(
                                "수원왕갈비",
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
                                    builder: (context) => Profile()),
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
                                    builder: (context) => Profile()),
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
