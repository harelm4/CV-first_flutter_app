import 'package:flutter/material.dart';
import 'package:first_flutter_app/Services/Utils.dart';
import 'package:flutter/rendering.dart';

class TopMenu extends StatefulWidget {
  const TopMenu({Key? key}) : super(key: key);

  @override
  _TopMenuState createState() => _TopMenuState();
}

class _TopMenuState extends State<TopMenu> {
  double centerX = 0;
  double centerY = 0;
  final Color iconsColor = Colors.black87;

  @override
  Widget build(BuildContext context) {
    centerX = Utils.getScreenWidth(context) / 2;
    centerY = Utils.getScreenHeight(context) / 2;
    return Stack(
      children: [
        Image.asset(
          "Assets/wallPaper.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),

        Positioned(
            //top menu
            top: 20,
            left: 10,
            child: Opacity(
              opacity: 0.8,
              child: Container(
                color: Colors.white,
                width: Utils.getScreenWidth(context) - 20,
                height: 150,
              ),
            )),

        Positioned(
          //contact me text
          top: 40,
          left: centerX - 120,
          child: Text(
            "Contact me:",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black87,
            ),
          ),
        ),
        //
        Positioned(
            //Email
            top: 70,
            left: 40,
            child: IconButton(
              icon: Icon(
                Icons.mail,
                color: iconsColor,
              ),
              iconSize: 70,
              onPressed: () {
                Utils.openEmail("Harelmx@gmail.com", "zzz", "zzz");
              },
            )),
        //
        Positioned(
            //whatsApp
            top: 70,
            left: centerX - 40,
            child: IconButton(
              icon: Icon(
                Icons.textsms,
                color: iconsColor,
              ),
              iconSize: 70,
              onPressed: () {
                Utils.sendWhatsApp("0503603033", "");
              },
            )),
        //
        Positioned(
            //phone
            top: 70,
            right: 40,
            child: IconButton(
              icon: Icon(
                Icons.phone,
                color: iconsColor,
              ),
              iconSize: 70,
              onPressed: () {
                Utils.openPhone("0503603033");
              },
            )),
      ],
    );
  }
}
