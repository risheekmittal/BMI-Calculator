import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

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
                    Center(child: Text('OVERWEIGHT', style: kResultTextStyle,)),
                    Center(child: Text('26.7', style: kResultPageStyle,)),
                    Center(child: Text('You have a higher than normal body weight.Try to exercise more.',style: TextStyle(fontSize: 22.0),textAlign: TextAlign.center,))
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
