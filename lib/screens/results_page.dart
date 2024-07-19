import 'package:bmi_cal/components/bottom_button.dart';
import 'package:bmi_cal/components/card_content.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.intepretation,
      required this.resultText});

  final String bmiResult;
  final String resultText;
  final String intepretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "BMI CALCULATOR",
          ),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your BMI',
                  style: titleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: inactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: resultTextSTyle.copyWith(
                          color: getBmiTextColor(resultText)),
                    ),
                    Text(
                      bmiResult,
                      style: bmiTextSTyle,
                    ),
                    Text(
                      intepretation,
                      style: resultBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              buttontitle: 'RE-CALCULATE',
              ontap: () {
                Navigator.pop(context);
              },
            )
          ]),
    );
  }
}
