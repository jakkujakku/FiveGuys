import 'package:flutter/foundation.dart';

class FoodDetails extends ChangeNotifier {
  void updateFoodDetails(String foodName, Map<String, String> newDetails) {
    if (_foodDetailsList.containsKey(foodName)) {
      _foodDetailsList[foodName] = newDetails;
    }
    notifyListeners();
  }

  Map<String, Map<String, String>> _foodDetailsList = {
    "의정부부대버거A": {
      '이미지':
          'https://mblogthumb-phinf.pstatic.net/MjAxNzA4MjBfMTM5/MDAxNTAzMjM0MDkwNTg5.ttYjcybf_Od-SDC4LX-G_cbWjnYB2881WjrJZi5EIdsg.xtWB-23gpv-1iYusY89C5oYHkHx80E-cWm6vgbkCknwg.JPEG.jangkkoo/%EC%98%81%ED%99%94_%EA%B7%B8%EB%A0%98%EB%A6%B0_3_%EA%B0%81%EB%B3%B8_%EC%99%84%EB%A3%8C%2C_%EA%B8%B0%EC%A6%88%EB%AA%A8%EC%97%90_%EB%8C%80%ED%95%B4_%EC%95%8C%EB%A9%B4_%EB%8D%94_%EC%9E%AC%EB%AF%B8%EC%9E%88%EB%8A%94_9%EA%B0%80%EC%A7%80_%286%29.jpg?type=w800',
      '이름': '조계성',
      '제조년월': '1998.01.05',
      '성분': 'INTJ',
      '원산지': '의정부',
      '영양정보': 'Omega3',
      '깃허브': 'https://github.com/jakkujakku/FiveGuys',
      '벨로그': "https://velog.io/@cheshire0105/about",
    },
    "의정부부대버거B": {
      '이미지': 'https://photo.cosplayfu.com/character/mini/24623_286445.jpg',
      '이름': '박철우',
      '제조년월': '1993.04.18',
      '성분': 'INTP',
      '원산지': '의정부',
      '영양정보': 'Carbohyrate',
      '깃허브': 'https://github.com/jakkujakku/FiveGuys',
      '벨로그': 'https://velog.io/@churoo',
    },
    // Add more food details here...
  };

  Map<String, String> _details = {};

  Map<String, String> get details => _details;

  set details(Map<String, String> newDetails) {
    _details = newDetails;
    notifyListeners(); // 상태가 변경되었음을 알림
  }

  void setFoodDetails(String foodName) {
    if (_foodDetailsList.containsKey(foodName)) {
      _details = _foodDetailsList[foodName]!;
    } else {
      _details = {
        '이름': '기본음식',
        '제조년월': '2023.01.01',
        '성분': '기본맛',
        '영양정보': '기본',
      };
    }
    notifyListeners(); // 상태가 변경되었음을 알림
  }
}
