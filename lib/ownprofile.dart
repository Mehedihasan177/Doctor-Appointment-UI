import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/ownprofileshown.dart';

class OwnProfile extends StatefulWidget {
  const OwnProfile({Key? key}) : super(key: key);

  @override
  _OwnProfileState createState() => _OwnProfileState();
}

class _OwnProfileState extends State<OwnProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
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
}

rectangleShap() {
  //final size = MediaQuery.of(context).size;
  return Container(
// height: size.height * 0.8,
// width: size.width * 1,
    height: 120,
    width: 600,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(63),
          bottomRight: Radius.circular(63),
        ),
        color: Colors.blue.withOpacity(0.9)),
  );
}

class Designposition extends StatelessWidget {
  const Designposition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        child: Container(
              padding: EdgeInsets.only(top: 110),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('images/boy.jpg'), fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10, left: 65),
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 40.0, height: 2.0, color: Colors.black),
                              decoration: InputDecoration(
                                hintText: "Height",
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10, left: 65),
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 40.0, height: 2.0, color: Colors.black),
                              decoration: InputDecoration(
                                hintText: "Weight",
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Full Name"),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 40.0, height: 2.0, color: Colors.black),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(20),
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Male"),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 40.0, height: 2.0, color: Colors.black),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(20),
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Date of Birth"),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 40.0, height: 2.0, color: Colors.black),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(20),
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Phone Number"),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                  fontSize: 40.0, height: 2.0, color: Colors.black),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(20),
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email"),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  fontSize: 40.0, height: 2.0, color: Colors.black),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(20),
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Previous Problems if any"),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 40.0, height: 2.0, color: Colors.black),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(20),
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Others Problems if any"),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            child: TextField(
                              style: TextStyle(
                                  fontSize: 40.0, height: 2.0, color: Colors.black),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(20),
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.8,
                    //color: Color(0xF60D72),
                    child: ElevatedButton(
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {
                        Get.to(OwnProfileShown());
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff00c853),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                      ),
                    ),
                    decoration: BoxDecoration(
                        //color: Color(0xF60D72),
                        borderRadius: BorderRadius.circular(18)),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
