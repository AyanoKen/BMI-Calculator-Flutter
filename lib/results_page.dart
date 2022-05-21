import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_card.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiNum,
      required this.bmiResult,
      required this.bmiAnalysis});

  final String bmiNum;
  final String bmiResult;
  final String bmiAnalysis;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your BMI'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 8,
              child: CustomCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiResult,
                      style: TextStyle(
                          color: Color(0xFF24D876),
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0),
                    ),
                    Text(
                      bmiNum,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 100.0),
                    ),
                    Text(
                      bmiAnalysis,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: kBottomColor,
                child: Center(
                  child: Text('RE-CALCULATE', style: kBottomTextStyle),
                ),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
              ),
            )
          ],
        ));
  }
}
