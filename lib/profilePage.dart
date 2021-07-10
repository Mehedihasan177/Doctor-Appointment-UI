import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/ownprofile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70.withOpacity(0.9),
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

  Designposition() {
    return Container(
      height: 800,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 4,
                    offset: Offset(4, 8), // Shadow position
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/boy.jpg"),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Md. Mehedi Hasan",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "0170899999999",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              child: FlatButton(
                  onPressed: () {
                    Get.to(OwnProfile());
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "images/male.png",
                          height: 30,
                          width: 30,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text("Profile", style: TextStyle(fontSize: 22),),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              child: FlatButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "images/history.png",
                          height: 30,
                          width: 30,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text("History", style: TextStyle(fontSize: 22),),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              child: FlatButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "images/placeholder.png",
                          height: 30,
                          width: 30,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text("Address", style: TextStyle(fontSize: 22),),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              child: FlatButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "images/headphones.png",
                          height: 30,
                          width: 30,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text("Help Center", style: TextStyle(fontSize: 22),),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              child: FlatButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "images/smartphone.png",
                          height: 30,
                          width: 30,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text("Hotline", style: TextStyle(fontSize: 22),),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              child: FlatButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "images/info.png",
                          height: 30,
                          width: 30,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text("About Us", style: TextStyle(fontSize: 22),),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              child: FlatButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "images/sign-out.png",
                          height: 30,
                          width: 30,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text("Log Out", style: TextStyle(fontSize: 22),),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

rectangleShap() {
  //final size = MediaQuery.of(context).size;
  return Container(
// height: size.height * 0.8,
// width: size.width * 1,
    height: 170,
    width: 600,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(63),
          bottomRight: Radius.circular(63),
        ),
        color: Colors.blue.withOpacity(0.9)),
  );
}

// Container(
// decoration: BoxDecoration(
// // color: Colors.black,
// //border: Border.all(color: Colors.black87, width: 2),
// borderRadius: BorderRadius.circular(100)
// ),
// child: IconButton(
// icon: Icon(
// Icons.arrow_back,
// color: Colors.white,
// ),
// onPressed: () {
// // do something
// },
// ),
// ),
