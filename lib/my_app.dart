import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(gradientColors: [
          Color.fromARGB(255, 100, 181, 246),
          Color.fromARGB(255, 0, 91, 228),
          Color.fromARGB(255, 0, 30, 76)
        ]),
      ),
    );
  }
}
