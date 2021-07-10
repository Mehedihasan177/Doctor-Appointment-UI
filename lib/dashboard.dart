import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'alldoctorsShedule.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Stack(children: [
        circle(),
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10, left: 20),
              child: DesignPortion(),
            ),
          ],
        ),
      ]),
    );
  }

  circle() {
    return Container(
      child: Stack(children: [
        Positioned(
          top: -390,
          right: 130,
          //bottom: 250,
          child: Container(
            height: 899,
            width: 899,
            //padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.98),
                borderRadius: BorderRadius.circular(500)),
            //child: Text("data", style: TextStyle(color: Colors.black)),
          ),
        ),
      ]),
    );
  }
}

class DesignPortion extends StatelessWidget {
  //const DesignPortion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: MediaQuery.of(context).size.height * 0.9,
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "My Dashboard",
                      style: TextStyle(fontSize: 29, color: Colors.white),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 90),
                        child: Text(
                          "Md. Mehedi Hasan",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        )),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("images/boy.jpg"),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.17,
                        width: MediaQuery.of(context).size.width * 0.33,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black87, width: 2),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 4,
                              offset: Offset(4, 8), // Shadow position
                            ),
                          ],
                        ),
                        child: RaisedButton(
                          child: Container(
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Image.asset(
                                  "images/calendar.png",
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 20,),
                                Text("All Doctors"),
                                Text("Shedule"),
                              ],
                            ),
                          ),
                          onPressed: () {
                            Get.to(AllDoctorsShedule());
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.17,
                        width: MediaQuery.of(context).size.width * 0.33,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black87, width: 2),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 4,
                              offset: Offset(4, 8), // Shadow position
                            ),
                          ],
                        ),
                        child: RaisedButton(
                          child: Container(
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Image.asset(
                                  "images/parchment.png",
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 20,),
                                Text("History")
                              ],
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.17,
                        width: MediaQuery.of(context).size.width * 0.33,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black87, width: 2),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 4,
                              offset: Offset(4, 8), // Shadow position
                            ),
                          ],
                        ),
                        child: RaisedButton(
                          child: Container(
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Image.asset(
                                  "images/list.png",
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 20,),
                                Text("Appointment"),
                                Text("list"),
                              ],
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.17,
                        width: MediaQuery.of(context).size.width * 0.33,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black87, width: 2),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 4,
                              offset: Offset(4, 8), // Shadow position
                            ),
                          ],
                        ),
                        child: RaisedButton(
                          child: Container(
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Image.asset(
                                  "images/medicalreport.png",
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 20,),
                                Text("Medical"),
                                Text("Reports"),
                              ],
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.17,
                        width: MediaQuery.of(context).size.width * 0.33,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black87, width: 2),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 4,
                              offset: Offset(4, 8), // Shadow position
                            ),
                          ],
                        ),
                        child: RaisedButton(
                          child: Container(
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Image.asset(
                                  "images/lending.png",
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 20,),
                                Text("Transactions")
                              ],
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.17,
                        width: MediaQuery.of(context).size.width * 0.33,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black87, width: 2),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 4,
                              offset: Offset(4, 8), // Shadow position
                            ),
                          ],
                        ),
                        child: RaisedButton(
                          child: Container(
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Image.asset(
                                  "images/scroll.png",
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 20,),
                                Text("Call History")
                              ],
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: MediaQuery.of(context).size.width * 0.33,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black87, width: 2),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 4,
                          offset: Offset(4, 8), // Shadow position
                        ),
                      ],
                    ),
                    child: RaisedButton(
                      child: Container(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/notifications.png",
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(height: 20,),
                            Text("notifications")
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
