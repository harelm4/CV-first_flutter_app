import 'package:first_flutter_app/Services/RadialImageButton.dart';
import 'package:first_flutter_app/Services/TopMenu.dart';
import 'package:first_flutter_app/Services/Utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:first_flutter_app/Services/yearDescriptionCouple.dart';

class Education extends StatefulWidget {
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  double centerX = 0;
  double centerY = 0;
  final Color iconsColor = Colors.black87;
  List<yearDescriptionCouple> list = [
    yearDescriptionCouple(
        2021, 2021, "Android studio and Flutter curse\n at Unemy.com"),
    yearDescriptionCouple(
        2019, 2024, "software and information\nsystem engineering in BGU"),
    yearDescriptionCouple(
        2018, 2019, "Pre-Academic program\nfor engineers of BGU"),
    yearDescriptionCouple(2016, 2016,
        "CCNA( Cisco Certified Network\nAssociate) course and certification"),
    yearDescriptionCouple(2015, 2015, "Satellite communication engineering"),
    yearDescriptionCouple(2015, 2015, "Microsoft Office 2013 course"),
    yearDescriptionCouple(2015, 2015, "Radio communication course by Ceragon"),
    yearDescriptionCouple(
        2013, 2013, "Network technician\ncourse 1600 of Hoshen"),
    yearDescriptionCouple(2013, 2013, "Graduate of 'Alonim' project"),
    yearDescriptionCouple(
        2009, 2013, "High school diploma,\nmajored in chemistry and Robotics"),
  ];

  @override
  Widget build(BuildContext context) {
    centerX = Utils.getScreenWidth(context) / 2;
    centerY = Utils.getScreenHeight(context) / 2;
    return Scaffold(
      appBar: AppBar(
        title: Text("Education"),
      ),
      body: Stack(children: [
        TopMenu(),
        Positioned(
          //radial b
          top: 10,
          left: -10,
          child: Hero(
            tag: "myPhoto",
            child: RadialImageButton(30.0, "Assets/me.png", () {
              setState(() {
                Navigator.pop(context);
              });
            }),
          ),
        ),
        Positioned(
          //list
          top: 190,
          left: 10,
          child: Container(
            width: Utils.getScreenWidth(context) - 20,
            height: 470,
            child: ListView(
              children: _listOfEducations(),
            ),
          ),
        ),
      ]),
    );
  }

  List<Container> _listOfEducations() {
    int index = -1;
    return list.map((entry) {
      index += 1;
      return Container(
          //entry container
          height: 100,
          width: Utils.getScreenWidth(context) - 20,
          decoration: index % 2 == 0
              ? BoxDecoration(color: Colors.white)
              : BoxDecoration(color: Colors.blue[50]),
          child: Row(
            children: [
              Container(
                //start year
                margin: EdgeInsets.only(right: 10),
                child: Text(entry.startYear.toString(),
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Container(
                //end year
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Text(
                          entry.endYear == entry.startYear
                              ? ""
                              : "-  " + entry.endYear.toString(),
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      //desc
                      margin: EdgeInsets.only(right: 10),
                      child: Text(entry.desc, style: TextStyle(fontSize: 16)),
                    )
                  ],
                ),
              ),
            ],
          ));
    }).toList();
  }
}
