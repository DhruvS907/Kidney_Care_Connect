// ignore_for_file: prefer_const_constructors

//import 'dart:js';
import 'package:flutter/material.dart';
import 'pages/homescreen.dart';
import 'pages/expensescreen.dart';
import 'pages/addexpense.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => Home(),
      '/expensescreen': (context) => Categories(),
      '/addexpense': (context) => AddPopup()
    },
  ));
}
