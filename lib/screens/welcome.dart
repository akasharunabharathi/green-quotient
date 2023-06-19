import 'package:flutter/material.dart';
import 'dart:math';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  var randomNumberGenerator = new Random();

  void moveOn() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/loginPage');
    });
  }

  @override
  void initState() {
    super.initState();
    moveOn();
    print("Hello.");
  }

  @override
  Widget build(BuildContext context) {
    double randomNumberWelcome = randomNumberGenerator.nextDouble();
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Expanded(
          flex: 10,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[Colors.green[900], Colors.green[600]])),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  10.0, screenHeight * 0.25, 10.0, screenHeight * 0.25),
              child: TweenAnimationBuilder(
                key: ObjectKey(randomNumberWelcome),
                child: RichText(
                    text: TextSpan(children: <TextSpan>[
//                                  TextSpan(text: ""),
                  TextSpan(
                      text: "Leafy\n\n",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0,
                          fontFamily: 'Comfortaa')),
                  TextSpan(
                      text: "Thoughts",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0,
                          fontFamily: 'Comfortaa')),
                  TextSpan(text: "\n" * 5),
                  TextSpan(
                      text: "How environmentally conscious are you ?\n\n\n",
                      style: TextStyle(
                          color: Colors.white60,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          fontFamily: 'Comfortaa')),
                  TextSpan(
                      text: "Loading...",
                      style: TextStyle(
                          color: Colors.white38,
                          fontStyle: FontStyle.italic,
                          fontSize: 18.0,
                          fontFamily: 'Comfortaa')),
                ])),
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(milliseconds: 1000),
                builder:
                    (BuildContext context, double opacityVal, Widget child) {
                  return Opacity(
                    opacity: opacityVal,
                    child: Padding(
                        padding: EdgeInsets.only(top: opacityVal * 20),
                        child: child),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
