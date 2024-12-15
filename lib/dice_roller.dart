import "package:flutter/material.dart";
import "dart:math";

final Random _rng = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currentDice = 1;

  void rollDice() {
    setState(() {
      currentDice = 1 + _rng.nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, spacing: 100, children: [
        Image.asset(
          'assets/dice-images/dice-$currentDice.png',
          width: 200,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow,
            overlayColor: WidgetStateColor.resolveWith(
              (states) {
                if (states.contains(WidgetState.hovered)) {
                  return const Color.fromARGB(255, 0, 0, 0)
                      .withValues(alpha: 0.06);
                }
                if (states.contains(WidgetState.focused) ||
                    states.contains(WidgetState.pressed)) {
                  return const Color.fromARGB(255, 215, 215, 0)
                      .withValues(alpha: 0.80);
                }
                return const Color.fromARGB(255, 0, 16, 73);
              },
            ),
          ), //styleFrom
          onPressed: rollDice,
          child: const Text(
            "Roll Dice",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black87,
            ),
          ),
        )
      ]),
    );
  }
}
