// import 'package:flutter/material.dart';
// import 'main.dart';

// class edit extends StatelessWidget {
//   const edit({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: BackButton(
//           color: Colors.redAccent,
//           onPressed: () {
//             Navigator.pop(context);
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
//             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
//             child: Column(
//               children: [
//                 Stack(
//                   children: [
//                     Center(
//                       child: Container(
//                         decoration: new BoxDecoration(
//                           borderRadius: new BorderRadius.all(
//                             Radius.circular(200),
//                           ),
//                           color: Colors.white,
//                         ),
//                         height: 300,
//                         width: 300,
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(
//                                 left: 55.0,
//                                 right: 30.0,
//                                 top: 10.0,
//                                 bottom: 10,
//                               ),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(150.0),
//                                 child: Image.network(
//                                   "https://avatars.githubusercontent.com/u/89556301?v=4",
//                                   width: 280,
//                                   height: 280,
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 Center(
//                   child: Stack(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           left: 15,
//                         ),
//                         child: Container(
//                           height: 60,
//                           width: 380,
//                           decoration: new BoxDecoration(
//                             borderRadius: new BorderRadius.all(
//                               Radius.circular(20),
//                             ),
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 10, vertical: 5),
//                         child: TextField(
//                           decoration: InputDecoration(labelText: 'Input'),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 Center(
//                   child: Stack(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           left: 15,
//                         ),
//                         child: Container(
//                           height: 60,
//                           width: 380,
//                           decoration: new BoxDecoration(
//                             borderRadius: new BorderRadius.all(
//                               Radius.circular(20),
//                             ),
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       TextField(
//                         decoration: InputDecoration(labelText: 'Input'),
//                         textAlign: TextAlign.center,
//                         cursorWidth: 10,
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 Center(
//                   child: Stack(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           left: 15,
//                         ),
//                         child: Container(
//                           height: 60,
//                           width: 380,
//                           decoration: new BoxDecoration(
//                             borderRadius: new BorderRadius.all(
//                               Radius.circular(20),
//                             ),
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       TextField(
//                         decoration: InputDecoration(labelText: 'Input'),
//                         textAlign: TextAlign.center,
//                         cursorWidth: 10,
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 Center(
//                   child: Stack(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           left: 15,
//                         ),
//                         child: Container(
//                           height: 60,
//                           width: 380,
//                           decoration: new BoxDecoration(
//                             borderRadius: new BorderRadius.all(
//                               Radius.circular(20),
//                             ),
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       TextField(
//                         decoration: InputDecoration(labelText: 'Input'),
//                         textAlign: TextAlign.center,
//                         cursorWidth: 10,
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 Center(
//                   child: Stack(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           left: 15,
//                         ),
//                         child: Container(
//                           height: 60,
//                           width: 380,
//                           decoration: new BoxDecoration(
//                             borderRadius: new BorderRadius.all(
//                               Radius.circular(20),
//                             ),
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       TextField(
//                         decoration: InputDecoration(labelText: 'Input'),
//                         textAlign: TextAlign.center,
//                         cursorWidth: 10,
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 25,
//                 ),
//               ],
//             ),
//           ),
//           color: Colors.red,
//           height: 900,
//         ),
//       ),
//     );
//   }
// }
