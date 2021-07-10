import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/bottomnevigation/bottomnevigation.dart';
//import 'package:practice/homepage.dart';
import 'package:practice/ragistration.dart';

import 'forgetpassword.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 18),
            child: Text("Sign In", style: TextStyle(
                fontSize: 24,
                color: Colors.black87
            ),),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 18),
            child: Text("Welcome Back!", style: TextStyle(
                fontSize: 17,
                color: Colors.black87
            ),),
          ),
          SizedBox(height: 20,),
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width * 0.91,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
              scrollPadding: EdgeInsets.all(10),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                border: InputBorder.none,
                hintText: "Email/phone number",
                prefixIcon: Icon(
                  Icons.supervisor_account_sharp,
                  size: 20,
                  color: Colors.black87,
                ),
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width * 0.91,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.black),
              scrollPadding: EdgeInsets.all(10),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                border: InputBorder.none,
                hintText: "Password",
                prefixIcon: Icon(
                  Icons.lock_outline,
                  size: 20,
                  color: Colors.black87,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  size: 20,
                  color:  Color(0xff00c853),
                ),
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.8,
            padding: EdgeInsets.only(left: 150),
            child: FlatButton(
              onPressed: () {
                Get.to(ForgetPassword());
              },
              child: RichText(
                text: TextSpan(
                  text: "Forget Password? ",
                  style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 15),
                  children: [
                    //TextSpan(text: 'Do Registration!', style: TextStyle(color: Colors.black.withOpacity(0.8)),
                    //)
                    ]
                ),
              ),

            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.8,
            //color: Color(0xF60D72),
            child: ElevatedButton(
              child: Text(
                "Sign In",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Get.to(BottomNevigation());
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black.withOpacity(0.8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
              ),
            ),
            decoration: BoxDecoration(
              //color: Color(0xF60D72),
                borderRadius: BorderRadius.circular(18)),
          ),
          SizedBox(height: 25,),
          Container(
            height: MediaQuery.of(context).size.height * 0.03,
            width: MediaQuery.of(context).size.width * 1,
            child: FlatButton(
              onPressed: () {
                Get.to(Registration());
              },
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 15),
                  children: [
                    TextSpan(text: 'Do Registration!', style: TextStyle(color: Colors.black.withOpacity(0.8)),
                    ),
                  ],
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}
