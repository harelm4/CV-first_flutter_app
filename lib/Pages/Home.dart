import 'package:first_flutter_app/Pages/Experience.dart';
import 'package:first_flutter_app/Services/TopMenu.dart';
import 'package:first_flutter_app/Services/Utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/Services/RadialImageButton.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isButtonOn = false;
  double centerX = 0;
  double centerY = 0;
  double opacity = 0;
  int opDuration = 300;
  final Color iconsColor = Colors.black87;

  @override
  Widget build(BuildContext context) {
    centerX = Utils.getScreenWidth(context) / 2;
    centerY = Utils.getScreenHeight(context) / 2;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: Stack(
        children: [
          TopMenu(),
          Positioned(
            //education
            top: centerY - 200,
            left: 0,
            child: RawMaterialButton(
              onPressed: () {
                if (opacity == 1) {
                  setState(() {
                    opacity = 0;
                  });
                  Navigator.pushNamed(context, "/education");
                }
              },
              child: AnimatedOpacity(
                duration: Duration(milliseconds: opDuration),
                opacity: opacity,
                child: Card(
                  color: Colors.cyan[900],
                  child: Row(
                    children: [
                      Icon(
                        Icons.school,
                        color: Colors.white70,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Education",
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            //Experience
            top: centerY - 200,
            left: Utils.getScreenWidth(context) - 170,
            child: RawMaterialButton(
              onPressed: () {
                if (opacity == 1) {
                  setState(() {
                    opacity = 0;
                  });
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (c) => Experience()));
                }
              },
              child: AnimatedOpacity(
                duration: Duration(
                  milliseconds: opDuration,
                ),
                opacity: opacity,
                child: Card(
                  color: Colors.cyan[900],
                  child: Row(
                    children: [
                      Icon(
                        Icons.school,
                        color: Colors.white70,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Experience",
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            //knowledge
            top: centerY + 150,
            left: 0,
            child: RawMaterialButton(
              onPressed: () {
                if (opacity == 1) {}
              },
              child: AnimatedOpacity(
                duration: Duration(milliseconds: opDuration),
                opacity: opacity,
                child: Card(
                  color: Colors.cyan[900],
                  child: Row(
                    children: [
                      Icon(
                        Icons.shopping_bag_rounded,
                        color: Colors.white70,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "knowledge",
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            //Skills
            top: centerY + 150,
            left: Utils.getScreenWidth(context) - 110,
            child: RawMaterialButton(
              onPressed: () {
                if (opacity == 1) {}
              },
              child: AnimatedOpacity(
                duration: Duration(milliseconds: opDuration),
                opacity: opacity,
                child: Card(
                  color: Colors.cyan[900],
                  child: Row(
                    children: [
                      Icon(
                        Icons.adb,
                        color: Colors.white70,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Skills",
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: centerY + 110,
              left: centerX - 80,
              child: AnimatedOpacity(
                opacity: 1 - opacity,
                duration: Duration(milliseconds: opDuration),
                child: Text(
                  "click me to see CV",
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
              )),
          Positioned(
            //radial b
            top: centerY - 100,
            left: centerX - 100,
            child: Hero(
              tag: "myPhoto",
              child: RadialImageButton(100.0, "Assets/me.png", () {
                setState(() {
                  clickRadButton();
                });
              }),
            ),
          ),
        ],
      ),
    );
  }

  void clickRadButton() {
    opacity = opacity == 0 ? 1.0 : 0.0;
    isButtonOn = isButtonOn ? false : true;
  }
}
