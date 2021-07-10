import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/doctorAppointment.dart';

import 'informations/getInformation.dart';
import 'informations/timeSheduletime.dart';
import 'informations/timedateinfomation.dart';
import 'model/allinformationsaboutdoctor.dart';
import 'model/doctorlist_and_ details.dart';
import 'model/model.dart';
import 'model/timeShedule.dart';
import 'model/timemodel.dart';

class AllDoctorsShedule extends StatefulWidget {
  const AllDoctorsShedule({Key? key}) : super(key: key);

  @override
  _AllDoctorsSheduleState createState() => _AllDoctorsSheduleState();
}

class _AllDoctorsSheduleState extends State<AllDoctorsShedule> {
  List<Diseasesinformation> informations = GetInformation.infomations;
  List<DoctorINformation> items = List.of(allinformations);
  List<TimeModel> timemodel = GetDayDateInformation.timedate;
  List<TimeShedule> timeselections = GetTimeShedule.timeselection;
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.9),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                SizedBox(height: 15,),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 60,
                  child: PageView.builder(
                      controller: PageController(viewportFraction: 0.3),
                      scrollDirection: Axis.horizontal,
                      itemCount: timemodel.length,
                      onPageChanged: (int index){
                        print(_index.toString());
                        setState(() {
                          _index = index;
                        });
                        print(_index.toString());
                      },
                      itemBuilder: (BuildContext context, int index){
                        TimeModel information = timemodel[index];
                        return Transform.scale(
                          scale: _index == index ? 1:0.9,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 4,
                                    offset: Offset(4, 8), // Shadow position
                                  ),
                                ],
                              ),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${information.day}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: _index == index ? 20:18,
                                        fontWeight: _index == index ? FontWeight.bold : FontWeight.normal,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        );
                      }
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 70,
                  child: PageView.builder(
                      controller: PageController(viewportFraction: 0.3),
                      scrollDirection: Axis.horizontal,
                      itemCount: timeselections.length,
                      onPageChanged: (int index){
                        print(_index.toString());
                        setState(() {
                          _index = index;
                        });
                        print(_index.toString());
                      },
                      itemBuilder: (BuildContext context, int index){
                        TimeShedule information = timeselections[index];
                        return Transform.scale(
                          scale: _index == index ? 1:0.9,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 4,
                                    offset: Offset(4, 8), // Shadow position
                                  ),
                                ],
                              ),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${information.timerange}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: _index == index ? 20:18,
                                        fontWeight: _index == index ? FontWeight.bold : FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                  ),
                ),
                Container(
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

              ]),
        ),
      ),
    );
  }

}
Widget buildListTile(DoctorINformation item) => Column(
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
          // Get.to(DoctorAppointment());
        },
      ),
    ),
  ],
);