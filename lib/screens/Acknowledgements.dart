import 'package:flutter/material.dart';

class Acknowledgemnts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: <Color>[Colors.green[900], Colors.green[600]])),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                  ],
                ),
                SizedBox(height: 50.0),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      "All Images used in this project were the top results from Google Search Results. Descriptions of GQ metrics were also sourced directly from Google Search Results.",
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontFamily: 'Comfortaa',
                          fontSize: 20.0,
                          color: Colors.white)),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "\n\nThe questions used in this application are sourced from a research paper titled \'Environmental Consciousness in Daily Activities Measured by Negative Prompts\' by Ai Hiramatsu, Kiyo Kurisu and Keisuke Hanaki.",
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Comfortaa',
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                )
              ],
            )));
  }
}
