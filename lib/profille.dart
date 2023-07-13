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
          '이미지':
              'https://mblogthumb-phinf.pstatic.net/MjAxNzA4MjBfMTM5/MDAxNTAzMjM0MDkwNTg5.ttYjcybf_Od-SDC4LX-G_cbWjnYB2881WjrJZi5EIdsg.xtWB-23gpv-1iYusY89C5oYHkHx80E-cWm6vgbkCknwg.JPEG.jangkkoo/%EC%98%81%ED%99%94_%EA%B7%B8%EB%A0%98%EB%A6%B0_3_%EA%B0%81%EB%B3%B8_%EC%99%84%EB%A3%8C%2C_%EA%B8%B0%EC%A6%88%EB%AA%A8%EC%97%90_%EB%8C%80%ED%95%B4_%EC%95%8C%EB%A9%B4_%EB%8D%94_%EC%9E%AC%EB%AF%B8%EC%9E%88%EB%8A%94_9%EA%B0%80%EC%A7%80_%286%29.jpg?type=w800',
          '이름': '조계성',
          '제조년월': '1998.01.05',
          '성분': 'INTJ',
          '원산지': '의정부',
          '영양정보': 'Omega3',
        };
        break;

      case "의정부부대버거B":
        foodDetails = {
          '이미지': 'https://photo.cosplayfu.com/character/mini/24623_286445.jpg',
          '이름': '박철우',
          '제조년월': '1993.04.18',
          '성분': 'INTP',
          '원산지': '의정부',
          '영양정보': 'Carbohyrate',
        };
        break;

      case "대구닭강정":
        foodDetails = {
          '이미지': 'https://avatars.githubusercontent.com/u/89556301?v=4',
          '이름': '김준우',
          '제조년월': '1998.06.29',
          '성분': 'ENTJ',
          '원산지': '대구',
          '영양정보': 'Iron content',
        };
        break;

      case "남양주닭갈비버거":
        foodDetails = {
          '이미지':
              'https://www.thedrive.co.kr/news/data/20230418/p1065613542337446_942_thum.PNG',
          '이름': '이시영',
          '제조년월': '1989.04.15',
          '성분': 'ENFJ',
          '원산지': '남양주',
          '영양정보': 'Hemoglobin',
        };
        break;

      case "수원갈비버거":
        foodDetails = {
          '이미지':
              'https://static.wikia.nocookie.net/pokemon/images/d/d0/%EA%BC%AC%EB%A7%88%EB%8F%8C_%EA%B3%B5%EC%8B%9D_%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8.png/revision/latest?cb=20170405014701&path-prefix=ko',
          '이름': '조재민',
          '제조년월': '1996.10.25',
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
              icon: Icon(
                CupertinoIcons.pencil_ellipsis_rectangle,
                size: 30,
              ),
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
                                // 프로필 이미지 흰 원
                                padding: EdgeInsets.only(
                                  left: 65.0,
                                  right: 30.0,
                                  top: 10.0,
                                  bottom: 10,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(150.0),
                                  child: Image(
                                    image:
                                        NetworkImage("${foodDetails['이미지']}"),
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
                  // 깃허브 아이콘
                  Padding(
                    padding: const EdgeInsets.only(left: 260, bottom: 8),
                    child: Row(
                      children: [
                        // 깃허브 아이콘
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXqDKyfbUJ3bsDc5tPovwsAHicZqq5HIMDYPvmRzpdmg&s',
                                width: 20,
                                height: 20,
                                fit: BoxFit.contain,
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white)),
                            ),
                          ),
                        ),
                        // velog 아이콘
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Image.network(
                                'https://velog.velcdn.com/images/velog/profile/9aa07f66-5fcd-41f4-84f2-91d73afcec28/green%20favicon.png',
                                width: 20,
                                height: 20,
                                fit: BoxFit.contain,
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white)),
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
                              horizontal: 50, vertical: 20),
                          child: Text(
                            "제조년월 : ${foodDetails['제조년월']}",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
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
                              horizontal: 50, vertical: 20),
                          child: Text(
                            "성분 : ${foodDetails['성분']}",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
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
                              horizontal: 50, vertical: 20),
                          child: Text(
                            "원산지 : ${foodDetails['원산지']}",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
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
                              horizontal: 50, vertical: 20),
                          child: Text(
                            "영양정보 : ${foodDetails['영양정보']}",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                wordSpacing: 4),
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
