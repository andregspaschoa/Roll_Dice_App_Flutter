import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;
  var activeRollDice = 'assets/images/dice-6.png';

  void rollDice() {
    setState(() {
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
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton.icon(
          onPressed: rollDice,
          icon: const Icon(Icons.roller_shades_rounded),
          label: const Text('Roll Dice'),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 243, 222, 33), 
            foregroundColor: Colors.white, 
            shadowColor: Colors.black, 
            elevation: 5, 
            textStyle: const TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.bold, 
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15, 
            ),
          ),
        )
      ],
    );
  }
}
