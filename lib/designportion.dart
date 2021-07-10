import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/doctorAppointment.dart';

import 'informations/getInformation.dart';
import 'model/allinformationsaboutdoctor.dart';
import 'model/doctorlist_and_ details.dart';
import 'model/model.dart';
class Designposition extends StatefulWidget {
  const Designposition({Key? key}) : super(key: key);

  @override
  _DesignpositionState createState() => _DesignpositionState();
}

class _DesignpositionState extends State<Designposition> {
  List<Diseasesinformation> informations = GetInformation.infomations;
  List<DoctorINformation> items = List.of(allinformations);
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 90),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 17),
              child: Text(
                "Hi, Md. Mehedi Hasan",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black.withOpacity(0.8),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.91,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.black),
                scrollPadding: EdgeInsets.all(10),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(9),
                  border: InputBorder.none,
                  hintText: "Search",
                  suffixIcon: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.search,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Text("Catagory")),
                Container(
                    padding: EdgeInsets.only(left:250),
                    alignment: Alignment.centerLeft,
                    child: Text("See All")),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.centerLeft,
              height: 125,
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.3),
                  scrollDirection: Axis.horizontal,
                  itemCount: informations.length,
                  onPageChanged: (int index){
                  print(_index.toString());
                    setState(() {
                      _index = index;
                    });
                  print(_index.toString());
                  },
                  itemBuilder: (BuildContext context, int index){
                    Diseasesinformation information = informations[index];
                    return Transform.scale(
                      scale: _index == index ? 1:0.9,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xff00c853),
                              borderRadius: BorderRadius.circular(18)
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                //borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  height: 50,
                                  width: 50,
                                  image: AssetImage(information.image),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('${information.name}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: _index == index ? 10:8,
                                  fontWeight: _index == index ? FontWeight.bold : FontWeight.normal,
                                ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 20,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                  child: Text('${information.number}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: _index == index ? 10:8,
                                      fontWeight: _index == index ? FontWeight.bold : FontWeight.normal,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Text("Top Rated", style: TextStyle(fontSize: 20),)),
                Container(
                    padding: EdgeInsets.only(left:220),
                    alignment: Alignment.centerLeft,
                    child: Text("See All")),
              ],
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              child: Container(
                height: 2000,
                //padding: EdgeInsets.only(top: 50),
                child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return buildListTile(item);
                    }
                ),
              ),
            ),

          ]),
    );
  }

}
Widget buildListTile(DoctorINformation item) => SingleChildScrollView(
  child:   Column(

    children: [

      Container(

        height: 80,

        //padding: EdgeInsets.all(10),

        margin: EdgeInsets.all(5),

        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(10),

          color: Colors.white.withOpacity(0.6),

        ),

        child: ListTile(

          leading: CircleAvatar(

            radius: 30,

            backgroundImage: AssetImage(item.image),

          ),

          title: Container(

            alignment: Alignment.centerLeft,

            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text(

                  item.name,

                  style: TextStyle(fontSize: 22, color: Colors.black),

                ),

                Text(

                  item.department,

                  style: TextStyle(fontSize: 18, color: Colors.black),

                ),

                Text(

                  item.experience,

                  style: TextStyle(color: Colors.black),

                ),

              ],

            ),

          ),

          //subtitle: Text(item.experience,style: TextStyle(color: Colors.black),),

          onTap: (){

            Get.to(DoctorAppointment());

          },

        ),

      ),

    ],

  ),
);