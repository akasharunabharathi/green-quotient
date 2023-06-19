import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_quotient/Extras/CustomHeaderWithPercentageIndicator.dart';
import 'package:green_quotient/shared/naturalElement.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        elevation: 0.0,
      ),
      drawer: Drawer(
          child: ListView(children: [
        DrawerHeader(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Colors.green[800],
            Colors.green[600],
          ])),
          child: RichText(
              text: TextSpan(children: <TextSpan>[
            TextSpan(text: "\n"),
            TextSpan(
                text: "Leafy\n",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    fontFamily: 'Comfortaa')),
            TextSpan(
                text: "Thoughts",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    fontFamily: 'Comfortaa')),
          ])),
        ),
        SizedBox(height: 10.0),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/acknowledgements');
          },
          child: Container(
            decoration: BoxDecoration(
                //boxShadow:
                ),
            child: Row(
              children: [
                SizedBox(width: 5.0),
                Icon(
                  Icons.library_books,
                  color: Colors.green[600],
                ),
                SizedBox(width: 5.0),
                Text(
                  "Acknowledgements",
                  style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontFamily: 'Comfortaa',
                      fontSize: 20.0,
                      color: Colors.green[600]),
                )
              ],
            ),
          ),
        )
      ])),
      extendBodyBehindAppBar: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomHeaderWithPercentageIndicator(),
            SizedBox(
              height: 30.0,
            ),
            Opacity(
              opacity: 0.7,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("What about my city ?",
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: NaturalElement(
                        element: "Air",
                        image: "chennai_air.jpg",
                        redirectTo: 'https://waqi.info/',
                        description:
                            'Think of the Air Quality Index (AQI) as a yardstick that runs from 0 to 500. The higher the AQI value, the greater the level of air pollution and the greater the health concern. For example, an AQI value of 50 or below represents good air quality, while an AQI value over 300 represents hazardous air quality.')),
                Expanded(
                    flex: 1,
                    child: NaturalElement(
                      element: "Water",
                      image: "chennai_water.png",
                      redirectTo:
                          'https://chennaimetrowater.tn.gov.in/qualityassurance.html#:~:text=The%20Quality%20of%20drinking%20water,in%20the%20laboratory%20and%20field.',
                      description:
                          'Water quality describes the condition of the water, including chemical, physical, and biological characteristics, usually with respect to its suitability for a particular purpose.',
                    )),
                //Expanded(flex: 1, child: NaturalElement(element: "Wildlife", image: "chennai_wildlife.png", routeName: '/wildlife',)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 5.0),
                FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/treeScreen');
                    },
                    child: Text("What can I do about my environment?",
                        style: TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    color: Colors.green[600],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                SizedBox(width: 5.0),
              ],
            ),
            SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }
}
