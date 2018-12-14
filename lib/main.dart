import 'package:flutter/material.dart';
import 'welcome.dart';

void main(){
  runApp(
      MaterialApp(
    home: Welcome(),
    title: "Do It Right",
    theme: new ThemeData(
      primarySwatch: Colors.lightBlue,
    ),
  ));
}


