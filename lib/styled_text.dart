import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key, required this.text});
  final String text;

  @override
  Widget build(context) {
    return Text(text,
        style: const TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1),
          fontSize: 28,
        ));
  }
}
