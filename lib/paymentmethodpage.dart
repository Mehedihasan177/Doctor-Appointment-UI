import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/paymentmethod.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

  @override
  _PaymentMethodPageState createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50),
        alignment: Alignment.center,
        height: 800,
        width: 400,
        child: Container(
          alignment: Alignment.center,
          height: 450,
          width: 400,
          child: Column(
            children: [
              Container(
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.topLeft,
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage(
                              'images/bkash.png',
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        "Bkash",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.topLeft,
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage(
                              'images/nagad.png',
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        "Nagad",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.topLeft,
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                              'images/master-card.jpg',
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        "Master Card",
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.topLeft,
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                              'images/cash.jpg',
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        "Cash",
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("Cencel", style: TextStyle(color: Colors.white, fontSize: 20),),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 70,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    child: FlatButton(
                      onPressed: () { Get.to(PaymentMethod()); },
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("Submit", style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
