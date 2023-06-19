import 'package:flutter/material.dart';
import 'package:green_quotient/screens/naturalElementDisplayer.dart';

class NaturalElement extends StatelessWidget{

  final String element;
  final String image;
  final dynamic redirectTo;
  final String description;


  NaturalElement({this.element, this.image, this.redirectTo, this.description});

Widget build(BuildContext context){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
    child: InkWell(
      onTap: () {
        print('${this.element}');
        Navigator.push(context, MaterialPageRoute(builder: (context) => NaturalElementDisplayer(naturalElement: this)));
      },
      child: Container(

           child: Column(
                    children:<Widget>[
                    Container(
                    child: Hero(tag: '${this.element}', child: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset('Images/${this.image}'))),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0), bottomLeft: Radius.circular(20.0)),
                    boxShadow: [
                          BoxShadow(
                          color: Colors.black12.withOpacity(0.35),
                          spreadRadius: 1,
                          blurRadius: 25,
                          offset: Offset(0, 10), // changes position of shadow
                          ),
                          ],
                      ),
                       ),
                    SizedBox(height: 10.0),
                    Container(
                      child: Text(
                        "${this.element}",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'Comfortaa')
                    ),
                    )
                  ]
                ),
      ),
          ),
    );






}

/*ListTile(
contentPadding: EdgeInsets.all(25),
leading: ClipRRect(
child: Image.asset('Images/${this.image}.jpg'), //Image Credits: Air: Mr. Prabanch Nath, https://www.thenewsminute.com/article/chennai-air-pollution-it-time-city-has-separate-policy-address-crisis-111863borderRadius: BorderRadius.circular(8.0),
),
title: Text(
"${this.element} Quality",
style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue[300])
),
onTap: () {} // TODO: Add onTap
)
};
*/

}