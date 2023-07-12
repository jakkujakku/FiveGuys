import 'package:flutter/cupertino.dart';

import 'main.dart';
import 'profile1.dart';

Future<Container> gyesungContainer() async {
  Map<String, String> gyesung = {
    'Name': '조계성',
    'Date': '2023.12.31',
    'Taste': 'INTJ',
    'Origin': '의정부',
  };

  void buttonPressed(String buttonName) {
    if (buttonName == "의정부부대버거A") {
      gyesungContainer();
    } else if (buttonName == "의정부부대버거B") {
      // 버튼 2에 대한 동작
    } else if (buttonName == "수원왕갈비") {
      // 수원왕갈비 버튼에 대한 동작
    } else if (buttonName == "대구닭강정") {
      // 대구닭강정 버튼에 대한 동작
    } else if (buttonName == "남양주닭갈비") {
      // 남양주닭갈비 버튼에 대한 동작
    }
  }

  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 26,
        ),
        Text(
          "이름 : ${gyesung['Name']}",
          style: TextStyle(
              fontWeight: FontWeight.w300, fontSize: 19, wordSpacing: 4),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "성분  : ${gyesung['Taste']}",
          style: TextStyle(
              fontWeight: FontWeight.w300, fontSize: 20, wordSpacing: 4),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "유통기한 : ${gyesung['Origin']}",
          style: TextStyle(
              fontWeight: FontWeight.w300, fontSize: 19, wordSpacing: 4),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}
