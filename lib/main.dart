import 'package:flutter/material.dart';

import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 50, 0, 108),
            Color.fromARGB(255, 77, 0, 166),
            ),
      ),
    ),
  );
}

