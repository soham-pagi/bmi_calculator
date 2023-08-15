import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback onPress;

  RoundIconButton({required this.icon, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        elevation: 0.0,
        onPressed: onPress,
        shape: const CircleBorder(),
        fillColor: const Color(0xFF4C4F5E),
        constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
        child: Icon(icon)
    );
  }
}