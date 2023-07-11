import 'package:flutter/material.dart';

class Person {
  int age;
  String name;
  String blogAddress;
  String mbti;
  String tmi;
  String address;
  DateTime date;

  Person(this.age, this.name, this.blogAddress, this.mbti, this.tmi, this.date,
      this.address);
}

// 이름, 나이, 블로그 주소(깃허브), mbti, tmi,

List<Map> expectedList = [
  {'name': 'updated name', 'id': 1, 'value': 9876, 'num': 456.789},
  {'name': 'another name', 'id': 2, 'value': 12345678, 'num': 3.1416}
];
