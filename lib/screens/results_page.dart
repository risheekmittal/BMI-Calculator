import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage ({@required this.bmiResult, @required this.interpretation, @required this.resultTest});

  final String bmiResult;
  final String resultTest;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: Text("Your Result", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
              )),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(child: Text(resultTest.toUpperCase(), style: kResultTextStyle)),
                    Center(child: Text(bmiResult, style: kResultPageStyle,)),
                    Center(child: Text(interpretation,
                      style: TextStyle(fontSize: 22.0),
                      textAlign: TextAlign.center,
                    ),),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              child: Center(child: Text('RE-CALCULATE', style: kLargeButtonTextStyle)),
              padding: EdgeInsets.only(bottom: 20.0),
              color: kBottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          )
        ],
      ),
    );
  }
}
