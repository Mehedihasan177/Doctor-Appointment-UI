import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:practice/dashboard.dart';
import 'package:practice/homepage.dart';
import 'package:practice/profilePage.dart';
import 'package:practice/settingpage.dart';
class BottomNevigation extends StatefulWidget {
  const BottomNevigation({Key? key}) : super(key: key);

  @override
  _BottomNevigationState createState() => _BottomNevigationState();
}

class _BottomNevigationState extends State<BottomNevigation> {
  int _indexPage = 0;
  final pageOption = [
    HomePage(),
    Dashboard(),
    SettingPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageOption[_indexPage],
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined,color: Colors.black,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: Colors.black,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user,color: Colors.black,),
            label: '',
          ),
        ],
          onTap: (int index) {
          setState(() {
          _indexPage = index;
          });
          },
      ),
    );
  }
}


// CurvedNavigationBar(
// items: [
// Icon(Icons.home, color: Colors.black,),
// Icon(Icons.dashboard_outlined,color: Colors.black,),
// Icon(Icons.settings,color: Colors.black,),
// Icon(Icons.verified_user,color: Colors.black,),
// ],
// onTap: (int index) {
// setState(() {
// _indexPage = index;
// });
// },
// )
