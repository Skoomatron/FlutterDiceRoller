import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {

  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var path = 'assets/images/dice-1.png';

  void rollDice() {
    Random random = Random();
    int index = random.nextInt(6);
    print(index);
    List<String> images = [
      'assets/images/dice-1.png',
      'assets/images/dice-2.png',
      'assets/images/dice-3.png',
      'assets/images/dice-4.png',
      'assets/images/dice-5.png',
      'assets/images/dice-6.png',
    ];

    setState(() {
      path = images[index];
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(path),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black),
            child: const Text('Roll Dice')),
      ],
    );
  }
}