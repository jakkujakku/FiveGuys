// import 'package:flutter/material.dart';
// import 'package:fiveguys/profile1.dart';
// import 'package:fiveguys/function.dart';
// import 'package:fiveguys/main.dart';

// class Profile extends StatefulWidget {
//   const Profile({Key? key}) : super(key: key);

//   @override
//   State<Profile> createState() => _ProfileState();
// }

// Map<String, String> gyesung = {
//   'Name': '조계성',
//   'Date': '2023.12.31',
//   'Taste': 'INTJ',
//   'Origin': '의정부',
// };

// class _ProfileState extends State<Profile> {
//   Future<Container> _gyesungContainer() async {
//     return Container(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: 26,
//           ),
//           Text(
//             "이름 : ${gyesung['Name']}",
//             style: TextStyle(
//               fontWeight: FontWeight.w300,
//               fontSize: 19,
//               wordSpacing: 4,
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             "성분  : ${gyesung['Taste']}",
//             style: TextStyle(
//               fontWeight: FontWeight.w300,
//               fontSize: 20,
//               wordSpacing: 4,
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             "유통기한 : ${gyesung['Date']}",
//             style: TextStyle(
//               fontWeight: FontWeight.w300,
//               fontSize: 19,
//               wordSpacing: 4,
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // Back버튼
//         leading: BackButton(
//           color: Colors.redAccent,
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => FirstPage()),
//             );
//           },
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.edit),
//             color: Colors.redAccent,
//             onPressed: () {
//               print("Edit 버튼 눌렀다.");
//             },
//           ),
//         ],
//         elevation: 0,
//         backgroundColor: Colors.white,
//         title: Text(
//           " FIVE GUYS ",
//           style: TextStyle(
//             color: Colors.redAccent,
//             fontWeight: FontWeight.w900,
//             fontSize: 30,
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
//             child: Column(
//               children: [
//                 Stack(
//                   children: [
//                     Container(
//                       decoration: new BoxDecoration(
//                         borderRadius: new BorderRadius.all(
//                           Radius.circular(20),
//                         ),
//                         color: Colors.white,
//                       ),
//                       height: 150,
//                     ),
//                     Row(
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(
//                                 left: 16.0,
//                                 right: 10.0,
//                                 top: 16.0,
//                               ),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(50.0),
//                                 child: Image.network(
//                                   "https://avatars.githubusercontent.com/u/89556301?v=4",
//                                   width: 100,
//                                   height: 100,
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         FutureBuilder<Container>(
//                           future: _gyesungContainer(),
//                           builder: (context, snapshot) {
//                             if (snapshot.hasData) {
//                               return snapshot.data!;
//                             } else if (snapshot.hasError) {
//                               return Text("Error: ${snapshot.error}");
//                             } else {
//                               return CircularProgressIndicator();
//                             }
//                           },
//                         ),
//                       ],
//                     ),
//                     Divider(
//                       color: Colors.redAccent,
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Container(
//                   decoration: new BoxDecoration(
//                     borderRadius: new BorderRadius.all(
//                       Radius.circular(20),
//                     ),
//                     color: Colors.white,
//                   ),
//                   height: 550,
//                 ),
//               ],
//             ),
//           ),
//           color: Colors.red,
//         ),
//       ),
//     );
//   }
// }
