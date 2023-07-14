import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'foodDetail.dart';
import 'main.dart';
import 'dart:convert';

class EditPage extends StatefulWidget {
  // final Map<String, String> foodDetails;
  final TextEditingController image;
  final TextEditingController nameController;
  final TextEditingController manufactureDateController;
  final TextEditingController date;
  final TextEditingController origin;
  final TextEditingController nutritionalInformation;

  const EditPage({
    Key? key,
    // required this.foodDetails,
    required this.image,
    required this.nameController,
    required this.manufactureDateController,
    required this.date,
    required this.origin,
    required this.nutritionalInformation,
    required Map<String, String> foodDetails,
  }) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    var foodDetails = Provider.of<FoodDetails>(context).details;
    widget.image.text = foodDetails['이미지'] ?? '';
    widget.nameController.text = foodDetails['이름'] ?? '';
    widget.manufactureDateController.text = foodDetails['제조년월'] ?? '';
    widget.date.text = foodDetails['성분'] ?? '';
    widget.origin.text = foodDetails['원산지'] ?? '';
    widget.nutritionalInformation.text = foodDetails['영양정보'] ?? '';

    return Scaffold(
      //
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              setState(() {
                // TextField의 값을 가져와 foodDetails를 수정합니다.
                foodDetails['이름'] = widget.nameController.text;
                foodDetails['제조년월'] = widget.manufactureDateController.text;
                foodDetails['성분'] = widget.date.text;
                foodDetails['원산지'] = widget.origin.text;
                foodDetails['영양정보'] = widget.nutritionalInformation.text;
                foodDetails['깃허브'] = widget.image.text;
                foodDetails['벨로그'] = widget.image.text;

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
        //Done 버튼

        title: Text(
          'Order Memo',
          style: TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.w900,
            fontSize: 30,
          ),
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
                          'https://cdn.discordapp.com/attachments/1128561724249886777/1128965742352678932/image.png',
                        ),
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
                        horizontal: 0,
                        vertical: 40,
                      ),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 120,
                            vertical: 0,
                          ),
                          child: Column(
                            children: [
                              TextField(
                                controller: widget.nameController,
                                decoration: InputDecoration(
                                  labelText: '이름',
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ),
                              ),
                              TextField(
                                controller: widget.manufactureDateController,
                                decoration: InputDecoration(
                                  labelText: '제조년월',
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ),
                              ),
                              TextField(
                                controller: widget.date,
                                decoration: InputDecoration(
                                  labelText: '성분',
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ),
                              ),
                              TextField(
                                controller: widget.origin,
                                decoration: InputDecoration(
                                  labelText: '원산지',
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ),
                              ),
                              TextField(
                                controller: widget.nutritionalInformation,
                                decoration: InputDecoration(
                                  labelText: '영양정보',
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.redAccent,
                                    ),
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
                            var updatedFoodDetails = {
                              '이미지': widget.image.text,
                              '이름': widget.nameController.text,
                              '제조년월': widget.manufactureDateController.text,
                              '성분': widget.date.text,
                              '원산지': widget.origin.text,
                              '영양정보': widget.nutritionalInformation.text,
                              '깃허브': widget.image.text,
                              '벨로그': widget.image.text,
                            };

                            Provider.of<FoodDetails>(context, listen: false)
                                .details = updatedFoodDetails;

                            String json = jsonEncode(updatedFoodDetails);
                            print(json);

                            Navigator.pop(context, updatedFoodDetails);
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
