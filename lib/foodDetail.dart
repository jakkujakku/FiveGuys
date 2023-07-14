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
    "대구따로버거": {
      '이미지': 'https://avatars.githubusercontent.com/u/89556301?v=4',
      '이름': '김준우',
      '제조년월': '1998.06.29',
      '성분': 'ENTJ',
      '원산지': '대구',
      '영양정보': 'Iron content',
      '깃허브': 'https://github.com/jakkujakku/FiveGuys',
      '벨로그': "https://velog.io/@jakkujakku98",
    },
    "남양주닭갈비버거": {
      '이미지':
          'https://www.thedrive.co.kr/news/data/20230418/p1065613542337446_942_thum.PNG',
      '이름': '이시영',
      '제조년월': '1989.04.15',
      '성분': 'ENFJ',
      '원산지': '남양주',
      '영양정보': 'Hemoglobin',
      '깃허브': 'https://github.com/jakkujakku/FiveGuys',
      '벨로그': "https://velog.io/@code_dang",
    },
    "수원갈비버거": {
      '이미지':
          'https://static.wikia.nocookie.net/pokemon/images/d/d0/%EA%BC%AC%EB%A7%88%EB%8F%8C_%EA%B3%B5%EC%8B%9D_%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8.png/revision/latest?cb=20170405014701&path-prefix=ko',
      '이름': '조재민',
      '제조년월': '1996.10.25',
      '성분': 'INFP',
      '원산지': '수원',
      '영양정보': 'Protein',
      '깃허브': 'https://github.com/jakkujakku/FiveGuys',
      '벨로그': 'https://velog.io/@user2rum',
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
