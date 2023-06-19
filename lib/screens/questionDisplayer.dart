import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import 'package:green_quotient/shared/questions.dart';

class QuestionDisplayer extends StatefulWidget {
  @override
  _QuestionDisplayerState createState() => _QuestionDisplayerState();
}

class _QuestionDisplayerState extends State<QuestionDisplayer> {
  double totalScore = 0.0;
  double percentage;
  int questionIndex = 0;
  double response = 1;
  int maxIndex = questions.length;
  var randomNumberGenerator = new Random();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    double randomNumberOne = randomNumberGenerator.nextDouble();
    Question question = questions[questionIndex];
    return /*SingleChildScrollView(
      child:*/
        Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: <Color>[Colors.green[900], Colors.green[600]]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Container(
          margin: EdgeInsets.symmetric(
              vertical: screenSize.height * 0.18,
              horizontal: screenSize.width * 0.05),
          padding: EdgeInsets.all(50.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12.withOpacity(0.35),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(1, 5), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Opacity(
                          opacity: 0.5,
                          child:
                              Text("Question ${question.questionNumber} of 5")),
                    ],
                  ),
                  TweenAnimationBuilder(
                    key: ObjectKey(randomNumberOne),
                    child: Text(
                      question.prompt,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        // TODO: Change Font Family
                      ),
                    ),
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: Duration(milliseconds: 500),
                    builder: (BuildContext context, double opacityVal,
                        Widget child) {
                      return Opacity(
                        opacity: opacityVal,
                        child: Padding(
                            padding: EdgeInsets.only(top: opacityVal * 20),
                            child: child),
                      );
                    },
                  ),
                  SizedBox(height: screenSize.height * 0.1),
                  Slider.adaptive(
                      activeColor: Colors.green[600],
                      value: response,
                      onChanged: (newResponse) {
                        setState(() {
                          response = newResponse;
                        });
                      },
                      //divisions: 5,
                      min: 1,
                      max: 6,
                      //label: "$response.toInt()",
                      onChangeEnd: (finalResponse) async {
                        Future.delayed(Duration(milliseconds: 400), () {});
                        if (questionIndex < maxIndex) {
                          if (question.isNegative) {
                            question.score =
                                (finalResponse * (100 / 6)).toInt();

                            //questionIndex++;
                          } else {
                            question.score =
                                ((7 - finalResponse) * (100 / 6)).toInt();

                            //questionIndex++;
                          }
                          // 7 = 6 + 1
                          //print(question.score);

                          questionIndex += 1;

                          if (questionIndex == maxIndex) {
                            Navigator.pushReplacementNamed(
                                context, '/homeScreen');
                          } else {
                            setState(() {});
                          }
                        }
                      }),
                  Row(
                    children: [
                      SizedBox(width: 0.2),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Opacity(opacity: 0.7, child: Text("1")),
                          Opacity(
                            opacity: 0.7,
                            child: Text("Strongly agree",
                                style: TextStyle(fontSize: 10.0)),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Opacity(opacity: 0.7, child: Text("6")),
                          Opacity(
                            opacity: 0.7,
                            child: Text("Strongly disagree",
                                style: TextStyle(fontSize: 10.0)),
                          )
                        ],
                      ),
                      SizedBox(width: 0.2)
                    ],
                  ),
                ]),
          ),
        )),
      ),
    );
  }
}
