import 'package:flutter/material.dart';
import 'package:green_quotient/shared/naturalElement.dart';
import 'package:url_launcher/url_launcher.dart';


class NaturalElementDisplayer extends StatelessWidget {

  NaturalElement naturalElement;

  void _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }



  NaturalElementDisplayer({this.naturalElement});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[Colors.green[900], Colors.green[600]])
          ),
          child: Column(
            children: [
              SizedBox(height: 15),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios, color: Colors.white,))]),
              SizedBox(height: 10.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Hero(tag: '${naturalElement.element}',
                    child: Image.asset('Images/${naturalElement.image}',
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    )
                ),
              ),
              SizedBox(height: 30),
              Padding(
                  padding: EdgeInsets.all(18),
                  child: Text("${naturalElement.description}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0, fontFamily: 'Comfortaa')),
              ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(onTap: () {_launchURL(naturalElement.redirectTo);}, child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: "Click here to know more about ", style: TextStyle(fontWeight: FontWeight.w200, fontFamily: 'Comfortaa')),
                                TextSpan(text: "your city's \n", style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.w200, fontFamily: 'Comfortaa')),
                        TextSpan(text: "${naturalElement.element} quality", style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa')),

                  ]),
              )
                  ),
                )
            ],
          ),
        ]
          )
    )
    );
  }
}

