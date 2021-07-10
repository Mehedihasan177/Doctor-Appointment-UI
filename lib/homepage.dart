import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/dashboard.dart';

import 'designportion.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final pageOption = [
    Dashboard(),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black.withOpacity(0.9),
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.doorbell_sharp,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),

        body: Stack(children: [
          rectangleShap(),
          SingleChildScrollView(
            child: Column(
              children: [
                Designposition(),

              ],
            ),
          )
        ]));
  }
}



rectangleShap() {
  //final size = MediaQuery.of(context).size;
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
// height: size.height * 0.8,
// width: size.width * 1,
      height: 700,
      width: 600,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(63),
            topRight: Radius.circular(63),
          ),
          color: Colors.white.withOpacity(0.9)),
    ),
  );
}
