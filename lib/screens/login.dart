// TODO: DO something with the input

import 'package:flutter/material.dart';
import 'package:green_quotient/Extras/CustomTextField.dart';
//import 'dart:math';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController firstName;
  TextEditingController lastName;
  TextEditingController emailAddress;
  //var randomNumberGenerator = new Random();

  @override
  void initState() {
    super.initState();
    print("Building Login Page");
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: <Color>[Colors.green[900], Colors.green[600]])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.fromLTRB(
              10.0, screenSize.height * 0.25, 10.0, screenSize.height * 0),
          child: TweenAnimationBuilder(
            //key: ObjectKey(randomNumberLogin),
            child: SingleChildScrollView(
              child: Column(children: [
                Text("Sign Up",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Comfortaa')),
                CustomTextField(controller: firstName, hint: "First Name"),
                SizedBox(height: 20.0),
                CustomTextField(controller: lastName, hint: "Last Name"),
                SizedBox(height: 20.0),
                CustomTextField(
                    controller: emailAddress, hint: "Email Address"),
                SizedBox(height: screenSize.height * 0.1),
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: screenSize.width * 0.1),
                    child: FlatButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/questions');
                        },
                        child: Row(
                          children: [
                            SizedBox(width: 25.0),
                            Text("Proceed to questions",
                                style: TextStyle(
                                  fontFamily: 'Comfortaa',
                                  color: Colors.green[600],
                                  fontWeight: FontWeight.w100,
                                )),
                            Spacer(),
                            Opacity(
                                opacity: 1,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.green[600],
                                )),
                          ],
                        ),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                  ),
                )
              ]),
            ),
            tween: Tween<double>(begin: 0, end: 1),
            duration: Duration(milliseconds: 1000),
            builder: (BuildContext context, double opacityVal, Widget child) {
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
    );
  }
}
