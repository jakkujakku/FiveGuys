import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class FoodModel extends ChangeNotifier {
  Map<String, String> foodDetails = {};

  void updateFoodDetails(Map<String, String> newDetails) {
    foodDetails = newDetails;
    notifyListeners(); // 정보가 업데이트되었음을 알립니다.
  }
}

class EditPage extends StatefulWidget {
  final Map<String, String> foodDetails;

  const EditPage({Key? key, required this.foodDetails}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  late Map<String, String> foodDetails;
  late TextEditingController nameController;
  late TextEditingController manufactureDateController;
  // TODO: 필요한 경우 다른 컨트롤러를 추가합니다.

  @override
  void initState() {
    super.initState();
    foodDetails = widget.foodDetails;

    // 컨트롤러를 초기화합니다.
    nameController = TextEditingController(text: foodDetails['이름']);
    manufactureDateController =
        TextEditingController(text: foodDetails['제조년월']);
    // TODO: 필요한 경우 다른 컨트롤러를 초기화합니다.
  }

  @override
  void dispose() {
    // 컨트롤러를 정리합니다.
    nameController.dispose();
    manufactureDateController.dispose();
    // TODO: 필요한 경우 다른 컨트롤러를 정리합니다.

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: '이름'),
            ),
            TextField(
              controller: manufactureDateController,
              decoration: InputDecoration(labelText: '제조년월'),
            ),
            // TODO: 필요한 경우 다른 TextField를 추가합니다.
            ElevatedButton(
              child: Text('저장'),
              onPressed: () {
                setState(() {
                  // TextField의 값을 가져와 foodDetails를 수정합니다.
                  foodDetails['이름'] = nameController.text;
                  foodDetails['제조년월'] = manufactureDateController.text;
                  // TODO: 필요한 경우 다른 항목을 수정합니다.
                });
                Navigator.pop(context, foodDetails);
              },
            ),
          ],
        ),
      ),
    );
  }
}
