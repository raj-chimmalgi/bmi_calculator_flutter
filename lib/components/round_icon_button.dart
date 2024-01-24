import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key, required this.icon, required this.handleOnPressed});

  final VoidCallback handleOnPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: handleOnPressed,
      elevation: 0,
      constraints: const BoxConstraints.tightFor(width: 56, height: 56),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
