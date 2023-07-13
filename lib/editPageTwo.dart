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
  late TextEditingController date;
  late TextEditingController origin;
  late TextEditingController nutritionalInformation;
  // TODO: 필요한 경우 다른 컨트롤러를 추가합니다.

  @override
  void initState() {
    super.initState();
    foodDetails = widget.foodDetails;

    // 컨트롤러를 초기화합니다.
    nameController = TextEditingController(text: foodDetails['이름']);
    manufactureDateController =
        TextEditingController(text: foodDetails['제조년월']);
    date = TextEditingController(text: foodDetails['성분']);
    origin = TextEditingController(text: foodDetails['원산지']);
    nutritionalInformation = TextEditingController(
        text: foodDetails['영양정보']); // TODO: 필요한 경우 다른 컨트롤러를 초기화합니다.
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
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              setState(() {
                // TextField의 값을 가져와 foodDetails를 수정합니다.
                foodDetails['이름'] = nameController.text;
                foodDetails['제조년월'] = manufactureDateController.text;
                foodDetails['성분'] = date.text;
                foodDetails['원산지'] = origin.text;
                foodDetails['영양정보'] = nutritionalInformation.text;

                // TODO: 필요한 경우 다른 항목을 수정합니다.
              });
              Navigator.pop(context, foodDetails);
            },
            icon: Text(
              "Done",
              style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            )),
        title: Text(
          'Order Memo',
          style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.w900,
              fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.redAccent,
              height: 180,
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      color: Colors.redAccent,
                      height: 900,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: Image(
                        image: NetworkImage(
                            'https://cdn.discordapp.com/attachments/1128561724249886777/1128965742352678932/image.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 320, top: 300),
                      child: Image(
                        image: NetworkImage(
                            'https://cdn.discordapp.com/attachments/1128561724249886777/1129003548739387392/image.png'),
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 40),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 120, vertical: 0),
                          child: Column(
                            children: [
                              TextField(
                                controller: nameController,
                                decoration: InputDecoration(
                                  labelText: '이름',
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.redAccent),
                                  ),
                                ),
                              ),
                              TextField(
                                controller: manufactureDateController,
                                decoration: InputDecoration(
                                  labelText: '제조년월',
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.redAccent),
                                  ),
                                ),
                              ),
                              TextField(
                                controller: date,
                                decoration: InputDecoration(
                                  labelText: '성분',
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.redAccent),
                                  ),
                                ),
                              ),
                              TextField(
                                controller: origin,
                                decoration: InputDecoration(
                                  labelText: '원산지',
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.redAccent),
                                  ),
                                ),
                              ),
                              TextField(
                                controller: nutritionalInformation,
                                decoration: InputDecoration(
                                  labelText: '영양정보',
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.redAccent),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 290, left: 210),
                      child: Center(
                        child: IconButton(
                          icon: Icon(Icons.check),
                          iconSize: 40,
                          color: const Color.fromARGB(255, 47, 230, 53),
                          onPressed: () {
                            setState(() {
                              // TextField의 값을 가져와 foodDetails를 수정합니다.
                              foodDetails['이름'] = nameController.text;
                              foodDetails['제조년월'] =
                                  manufactureDateController.text;
                              foodDetails['성분'] = date.text;
                              foodDetails['원산지'] = origin.text;
                              foodDetails['영양정보'] = nutritionalInformation.text;

                              // TODO: 필요한 경우 다른 항목을 수정합니다.
                            });
                            Navigator.pop(context, foodDetails);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
