import 'package:flutter/material.dart';
import 'package:green_quotient/screens/Acknowledgements.dart';
import 'package:green_quotient/screens/login.dart';
import 'package:green_quotient/screens/questionDisplayer.dart';
import 'package:green_quotient/screens/homeScreen.dart';
import 'package:green_quotient/screens/welcome.dart';
import 'package:green_quotient/screens/treeScreen.dart';


void main() {
  runApp(MaterialApp(
      routes: {
        '/questions': (context) => QuestionDisplayer(),
        '/homeScreen': (context) => Homescreen(),
        '/welcome': (context) => Welcome(),
        '/loginPage': (context) => LoginPage(),
        '/treeScreen': (context) => TreeScreen(),
        '/acknowledgements': (context) => Acknowledgemnts(),
      },
    initialRoute: '/welcome'
  ));
}

