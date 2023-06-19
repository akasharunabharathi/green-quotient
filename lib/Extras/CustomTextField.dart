import 'package:flutter/material.dart';
import 'package:green_quotient/Extras/User.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  const CustomTextField({
    this.hint,
    this.controller,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User user = User();
    return TextField(
        controller: controller,
        cursorColor: Colors.white,
        cursorRadius: Radius.circular(20.0),
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: "${this.hint}",
            hintStyle: TextStyle(
                color: Colors.white54,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                fontFamily: 'Comfortaa')),
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
            fontFamily: 'Comfortaa'));
  }
}
