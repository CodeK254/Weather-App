// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weather/Screens/chooseLocation.dart';
import 'package:weather/Screens/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => HomePage(),
      '/home': (context) => chooseLocation(),
    },
  ));
}