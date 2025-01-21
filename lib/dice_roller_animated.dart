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

class _DiceRollerState extends State<DiceRoller> with SingleTickerProviderStateMixin {
  var currentDiceRoll = 1;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.elasticOut);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
    _controller.forward(from: 0);
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedBuilder(
          animation: _animation,
          child: Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200,
          ),
          builder: (context, child) {
            return Transform.rotate(
              angle: _animation.value * 2 * pi,
              child: child,
            );
          },
        ),
        const SizedBox(height: 20),
        ElevatedButton.icon(
          onPressed: rollDice,
          icon: const Icon(Icons.casino_rounded),
          label: const Text('Roll Dice'),
          style: ElevatedButton.styleFrom(          
            backgroundColor: const Color.fromARGB(136, 255, 255, 255), 
            foregroundColor: Colors.black, 
            shadowColor: Colors.black45, 
            elevation: 19, 
            textStyle: const TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.bold, 
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 10, 
            ),
          ),
        )
      ],
    );
  }
}
