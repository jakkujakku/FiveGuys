import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'editPageTwo.dart';
import 'package:url_launcher/url_launcher.dart';
import 'foodDetail.dart';

class Profile extends StatefulWidget {
  final String foodName;
  final Map<String, String> foodDetails;

  const Profile({Key? key, required this.foodName, required this.foodDetails})
      : super(key: key); // Update the constructor

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Map<String, String> foodDetails = {};

  @override
  void initState() {
    super.initState();

    final foodDetailsProvider =
        Provider.of<FoodDetails>(context, listen: false);
    foodDetailsProvider.setFoodDetails(widget.foodName);

    if (widget.foodDetails != null) {
      foodDetails = widget.foodDetails;
    }
  }

  @override
  Widget build(BuildContext context) {
    final image = TextEditingController(text: '이미지');
    final nameController = TextEditingController(text: '이름');
    final manufactureDateController = TextEditingController(text: '제조년월');
    final date = TextEditingController(text: '성분');
    final origin = TextEditingController(text: '원산지');
    final nutritionalInformation = TextEditingController(text: '영양정보');
    final github = TextEditingController(text: '깃허브');
    final velog = TextEditingController(text: '벨로그');

    var foodDetailsProvider = Provider.of<FoodDetails>(context, listen: true);

    var foodDetails = Provider.of<FoodDetails>(context, listen: true).details;

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.redAccent,
          onPressed: () {
            Navigator.pop(context, foodDetails);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              CupertinoIcons.pencil_ellipsis_rectangle,
              size: 30,
            ),
            color: Colors.redAccent,
            iconSize: 30,
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditPage(
                    image: image,
                    foodDetails: foodDetails,
                    nameController: nameController,
                    manufactureDateController: manufactureDateController,
                    date: date,
                    origin: origin,
                    nutritionalInformation: nutritionalInformation,
                    github: github,
                    velog: velog,
                  ),
                ),
              );

              if (result != null) {
                setState(() {
                  foodDetails = result;
                });
                foodDetailsProvider.updateFoodDetails(widget.foodName, result);
              }
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
          height: 890,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
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
                                child: Image(
                                  image: NetworkImage("${foodDetails["이미지"]}"),
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
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 260, bottom: 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: ElevatedButton(
                            onPressed: () {
                              launch(foodDetails['깃허브']!);
                            },
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXqDKyfbUJ3bsDc5tPovwsAHicZqq5HIMDYPvmRzpdmg&s',
                              width: 20,
                              height: 20,
                              fit: BoxFit.contain,
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: ElevatedButton(
                            onPressed: () {
                              launch(foodDetails['벨로그']!);
                            },
                            child: Image.network(
                              'https://velog.velcdn.com/images/velog/profile/9aa07f66-5fcd-41f4-84f2-91d73afcec28/green%20favicon.png',
                              width: 20,
                              height: 20,
                              fit: BoxFit.contain,
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                            horizontal: 50, vertical: 20),
                        child: Text(
                          "이름 : ${foodDetails['이름']}",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 19,
                            wordSpacing: 4,
                          ),
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
                            horizontal: 50, vertical: 20),
                        child: Text(
                          "제조년월 : ${foodDetails['제조년월']}",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 19,
                            wordSpacing: 4,
                          ),
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
                            horizontal: 50, vertical: 20),
                        child: Text(
                          "성분 : ${foodDetails['성분']}",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 19,
                            wordSpacing: 4,
                          ),
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
                            horizontal: 50, vertical: 20),
                        child: Text(
                          "원산지 : ${foodDetails['원산지']}",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 19,
                            wordSpacing: 4,
                          ),
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
                            horizontal: 50, vertical: 20),
                        child: Text(
                          "영양정보 : ${foodDetails['영양정보']}",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 19,
                            wordSpacing: 4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
