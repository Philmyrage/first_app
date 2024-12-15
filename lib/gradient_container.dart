import 'package:flutter/material.dart';
import "package:first_app/styled_text.dart";

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
      child: const Center(child: StyledText(text: "Hello World")),
    );
  }
}
