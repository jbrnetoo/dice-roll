import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice(){

    setState(() { // should use when some data will be changed and this class needs to call build again to reevaluate the widget.
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200
        ),
        const SizedBox(height: 20,), // used to create space between widgets
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                  fontSize: 28
              )
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}