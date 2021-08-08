import 'package:first_flutter_app/Pages/Home.dart';
import 'package:first_flutter_app/Pages/Education.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/Pages/Experience.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/education': (context) => Education(),
    },
  ));
}
