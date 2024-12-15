import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({required this.gradientColors, super.key});

  final List<Color> gradientColors;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: gradientColors, begin: startAlignment, end: endAlignment),
      ),
      child: Center(
        child: Image.asset(
          'assets/dice-images/dice-1.png',
          width: 200,
        ),
      ),
    );
  }
}
