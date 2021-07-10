import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/homepage.dart';
import 'package:practice/paymentmethodpage.dart';

import 'bottomnevigation/bottomnevigation.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.white70.withOpacity(0.9),
        body: Stack(children: [
          rectangleShap(),
          SingleChildScrollView(
            child: Column(
              children: [
                DesignSection(),
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
    height: 110,
    width: 600,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(63),
          bottomRight: Radius.circular(63),
        ),
        color: Colors.blue.withOpacity(0.9)),
  );
}

DesignSection() {
  return SingleChildScrollView(
    child: Container(
      child: Container(
        padding: EdgeInsets.only(top: 60, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 250,
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
                        style: TextStyle(fontSize: 15),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.accessibility,
                            color: Colors.blue,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.blue,
                          ),
                          Text(
                            "19-20-2021",
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              width: 350,
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
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "Booked Date",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.blue,
                          ),
                          Text(
                            "19-20-2021",
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.red,
                          ),
                          Text(
                            "10:00 AM",
                            style: TextStyle(fontSize: 15, color: Colors.red),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Dhaka Medica College",
                          style: TextStyle(fontSize: 15, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "Check Up Date",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.blue,
                          ),
                          Text(
                            "19-20-2021",
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.red,
                          ),
                          Text(
                            "10:00 AM",
                            style: TextStyle(fontSize: 15, color: Colors.red),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Dhaka Medica College",
                          style: TextStyle(fontSize: 15, color: Colors.red),
                        ),
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
              height: 100,
              width: 350,
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
                      backgroundImage: AssetImage("images/docone.jpg"),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Vascular Disease",
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.price_change,
                                color: Colors.blue,
                              ),
                              Text(
                                "price",
                                style:
                                    TextStyle(fontSize: 15, color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            "1000",
                            style: TextStyle(fontSize: 15, color: Colors.red),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.price_check,
                            color: Colors.blue,
                          ),
                        ],
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
              height: 110,
              width: 350,
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
              child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  children: [
                    Text(
                      "For Another Person",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.blue,
                                width: 2,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text("Enter Informations"),
                            SizedBox(
                              width: 120,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 110,
              width: 350,
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
              child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  children: [
                    Text(
                      "Discount",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 20),
                        child: Text("200"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 110,
              width: 350,
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
              child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  children: [
                    Text(
                      "Payment Method",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.blue,
                                width: 2,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          Get.to(PaymentMethodPage());
                        },
                        child: Row(
                          children: [
                            Image(image: AssetImage("images/bkash.png")),
                            Text("Bkash"),
                            SizedBox(
                              width: 140,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.bottomRight,
              //padding: EdgeInsets.only(left: 40),
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Get.to(BottomNevigation());
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
