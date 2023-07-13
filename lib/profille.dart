import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'FoodModel.dart';
import 'editPageTwo.dart';
import 'editPage.dart';
import 'main.dart';

class Profile extends StatelessWidget {
  final String foodName;

  const Profile({Key? key, required this.foodName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // FoodModel을 가져옵니다.
    final foodModel = Provider.of<FoodModel>(context);

    // FoodModel을 통해 현재 상태의 foodDetails를 가져옵니다.
    final foodDetails = foodModel.foodDetails;

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
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditPage(
                    foodDetails: foodDetails,
                  ),
                ),
              );

              // 반환된 값을 확인하고, 있다면 foodDetails를 업데이트합니다.
              if (result != null) {
                foodModel.updateFoodDetails(result);
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
