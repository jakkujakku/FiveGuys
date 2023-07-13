import 'package:fiveguys/button.dart';
import 'package:fiveguys/editPage.dart';
import 'package:flutter/material.dart';
import 'editPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 40.0,
                  ),
                  child: Image.network(
                    "https://i.ibb.co/Gnmk7yV/2023-07-11-9-26-14.pngp",
                    height: 400,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      AButton(),
                      Spacer(),
                      BButton(),
                      Spacer(),
                      CButton(),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                  child: Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      EButton(),
                      Spacer(),
                      DButton()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
