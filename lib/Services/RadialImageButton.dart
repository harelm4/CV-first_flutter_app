import 'package:flutter/material.dart';

class RadialImageButton extends StatefulWidget {
  double radius = 0;
  String url = "";
  void Function() onClick = () {};

  RadialImageButton(this.radius, this.url, this.onClick);

  @override
  _RadialImageButtonState createState() =>
      _RadialImageButtonState(radius, url, onClick);
}

class _RadialImageButtonState extends State<RadialImageButton> {
  double radius = 0;
  String url = "";
  void Function() onClick;

  _RadialImageButtonState(this.radius, this.url, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        onPressed: onClick,
        child: CircleAvatar(
          backgroundImage: AssetImage(url),
          radius: radius,
        ),
      ),
    );
  }
}
