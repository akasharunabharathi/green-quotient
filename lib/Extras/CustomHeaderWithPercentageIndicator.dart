import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:green_quotient/shared/questions.dart';

class CustomHeaderWithPercentageIndicator extends StatelessWidget {
  CustomHeaderWithPercentageIndicator({
    Key key,
  }) : super(key: key);

  double totalScore = 0.0;
  double percentage;
  double displayPercentage;

  double _percentageCalculator () {
    int callCounter = 0;
    if (callCounter == 0) {
      questions.forEach((Question question) {
        totalScore += question.score;
      });
      print(totalScore);
      percentage = totalScore / 600;
    }
    print(percentage);
    callCounter++;
    displayPercentage = (((percentage*100)).toInt())/10;
    return percentage;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Your Green Quotient is : ",
            style: TextStyle(
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white
            ),
          ),
          SizedBox(height: 8.0),
          CircularPercentIndicator(
            lineWidth: 10.0,
            circularStrokeCap: CircularStrokeCap.round,
            backgroundColor: Colors.green[700],
            progressColor: Colors.white,
            radius: 150.0,
            startAngle: 0,
            animation: true,
            backgroundWidth: 10.0,
            percent: _percentageCalculator(),
            center:  Text(
              "${displayPercentage} of 10",
              style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.green[600],
        borderRadius: BorderRadius.only(topLeft: Radius.zero, topRight: Radius.zero,  bottomLeft: Radius.circular(30.0) , bottomRight: Radius.circular(30.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.40),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
