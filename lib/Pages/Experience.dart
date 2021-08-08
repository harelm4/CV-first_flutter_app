import 'package:first_flutter_app/Services/RadialImageButton.dart';
import 'package:first_flutter_app/Services/TopMenu.dart';
import 'package:first_flutter_app/Services/Utils.dart';
import 'package:first_flutter_app/Services/job.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Experience extends StatefulWidget {
  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  double centerX = 0;
  double centerY = 0;
  final Color iconsColor = Colors.black87;
  List<Job> list = [
    Job("Assets/LFY.png", 2017, "Networking project manager", "LFY Telcom", [
      "Managing and supervising several\n  networking projects.",
      "Configuring network devices",
      "Managing a team of technicians"
    ]),
    Job("Assets/Partner.png", 2016, "Business Network technician", "Partner", [
      "Configuring network devices",
      "Installing devices in customers offices"
    ])
  ];

  @override
  Widget build(BuildContext context) {
    centerX = Utils.getScreenWidth(context) / 2;
    centerY = Utils.getScreenHeight(context) / 2;
    return Scaffold(
      appBar: AppBar(
        title: Text("Experience"),
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
      String tmpDesc = "";
      for (String d in entry.description) {
        tmpDesc += "- " + d + "\n";
      }
      index += 1;
      return Container(
          //entry container

          width: Utils.getScreenWidth(context) - 20,
          decoration: index % 2 == 0
              ? BoxDecoration(color: Colors.white)
              : BoxDecoration(color: Colors.blue[50]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      //icon
                      margin: EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.white30,
                        child: Image.asset(
                          entry.icon,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      //year
                      margin: EdgeInsets.only(right: 4),
                      child: Text(entry.year.toString() + ",",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      //company name
                      margin: EdgeInsets.only(right: 10),
                      child: Text(entry.CompanyName,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Container(
                  //position
                  margin: EdgeInsets.only(right: 10),
                  child: Text(entry.position,
                      style:
                          TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      //desc
                      margin: EdgeInsets.only(right: 10),
                      child: Text(tmpDesc, style: TextStyle(fontSize: 16)),
                    ),
                  ],
                )
              ],
            ),
          ));
    }).toList();
  }
}
