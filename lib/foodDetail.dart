// food_details.dart

import 'package:flutter/foundation.dart';

class FoodDetails extends ChangeNotifier {
  Map<String, String> _details = {};

  Map<String, String> get details => _details;

  set details(Map<String, String> newDetails) {
    _details = newDetails;
    notifyListeners(); // 상태가 변경되었음을 알림
  }
}
