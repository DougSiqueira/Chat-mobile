import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:chat/chart_screan.dart';

void main() async {
  runApp(MyApp());

//   Firestore.instance
//       .collection('mensagns')
//       .document('ZogcEq5tbIAtTcaN9jbm').collection('arquivos').document().setData({'arqname': 'foto.png'}
//       );

// //   // Firestore.instance.collection("col").document("doc").setData({"Texto": "Douglas"});
//   QuerySnapshot snapshot =
//       await Firestore.instance.collection('mensagns').getDocuments();
//   snapshot.documents.forEach((element) {
//     element.reference.updateData({'lido': false});
// //     print(element.data);
  // });

  Firestore.instance.collection('mensagns').snapshots().listen((event) {
    event.documents.forEach((element) {
      print(element.data);
    });
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Chat',
      theme:
          ThemeData(
            primarySwatch: Colors.deepPurple,
             iconTheme: IconThemeData(
               color: Colors.blue
             )),
      home: ChatScrean(),
    );
  }
}
