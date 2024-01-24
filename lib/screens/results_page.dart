import 'package:bmi_calculator_flutter/components/bottom_button.dart';
import 'package:bmi_calculator_flutter/components/reusable_card.dart';
import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Text(
                    bmiResult,
                    style: const TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      interpretation,
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            label: 're-calculate',
            handleOnTap: () {
              Navigator.pushNamed(context, '/');
            },
          )
        ],
      ),
    );
  }
}
