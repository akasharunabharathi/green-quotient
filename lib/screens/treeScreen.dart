import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class TreeScreen extends StatelessWidget {
  void _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[Colors.green[900], Colors.green[600]])
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [SizedBox(height: 15),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios, color: Colors.white,))]),
            SizedBox(height: screenSize.height * 0.35),
            Container(
              child: Center(
                child: GestureDetector(onTap: () {_launchURL('https://www.researchgate.net/publication/341070260_Common_Trees_of_Chennai_-_A_Photo_Identification_Guide');}, child: RichText(
                  text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: "Plant a Tree!\n\n", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Comfortaa', fontSize: 50.0)),
                        TextSpan(text: "Hmm, what should I plant ?", style: TextStyle(decoration: TextDecoration.underline, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa', fontSize: 23.0)),

                      ]),
                )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
