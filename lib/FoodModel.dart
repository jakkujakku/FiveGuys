import 'package:flutter/cupertino.dart';

class FoodModel extends ChangeNotifier {
  Map<String, String> foodDetails = {};

  void updateFoodDetails(Map<String, String> newDetails) {
    foodDetails = newDetails;
    notifyListeners(); // 정보가 업데이트되었음을 알립니다.
  }
}
