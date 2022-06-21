//import 'dart.io';
import 'package:flutter_app_01/views/android/loginView.dart';
import 'package:flutter_app_01/views/android/dashboard.dart';
import'package:flutter/material.dart';

class AppCovid extends StatelessWidget {
    // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: DashBoard(),
    ); // MaterialApp
  }
}