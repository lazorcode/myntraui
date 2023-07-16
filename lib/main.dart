import 'package:flutter/material.dart';
import 'package:myntraui/home.dart';
import 'package:myntraui/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'home':(context)=>MyHome(),
      'login':(context)=>LoginScreen()
    },
  ));
}

