import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key, required this.label, required this.handleOnTap});

  final String label;
  final VoidCallback handleOnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleOnTap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            label.toUpperCase(),
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
