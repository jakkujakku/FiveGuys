import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'foodDetail.dart';
import 'main.dart';

class EditPage extends StatelessWidget {
  final Map<String, String> foodDetails;
  final TextEditingController nameController;
  final TextEditingController manufactureDateController;
  final TextEditingController date;
  final TextEditingController origin;
  final TextEditingController nutritionalInformation;

  const EditPage({
    Key? key,
    required this.foodDetails,
    required this.nameController,
    required this.manufactureDateController,
    required this.date,
    required this.origin,
    required this.nutritionalInformation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
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
                    Image(
                      image: NetworkImage(''),
                      width: 10,
                      height: 10,
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
                                controller: nameController,
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
                                controller: manufactureDateController,
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
                                controller: date,
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
                                controller: origin,
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
                                controller: nutritionalInformation,
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
                      padding: const EdgeInsets.only(top: 330),
                      child: Center(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: Text(
                            '저장',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {
                            final updatedFoodDetails = {
                              '이름': nameController.text,
                              '제조년월': manufactureDateController.text,
                              '성분': date.text,
                              '원산지': origin.text,
                              '영양정보': nutritionalInformation.text,
                            };

                            Provider.of<FoodDetails>(context, listen: false)
                                .details = updatedFoodDetails;

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
