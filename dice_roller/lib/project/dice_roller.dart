// Custom widget

// class DiceRoller extends StatefulWidget

// Shortcut: type stful

import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  // Changing variable is kept inside State class
  int dice = 6;

  Random generator = Random();

  void rollDice()
  {
    setState(() {
                dice = generator.nextInt(6) + 1; // starts from 1 to 6
              });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            //using ternary operation

            // (dice == 1)
            //     ? 'asset/dice-1.png'
            //     : (dice == 2)
            //         ? 'asset/dice-2.png'
            //         : (dice == 3)
            //             ? 'asset/dice-3.png'
            //             : (dice == 4)
            //                 ? 'asset/dice-4.png'
            //                 : (dice == 5)
            //                     ? 'asset/dice-5.png'
            //                     : 'asset/dice-6.png',

            // string interpolation
            'asset/dice-$dice.png',
            width: 200,
          ), // Hover on image and go to refactor and select column
          SizedBox(
            height: 40,
          ), // So, we are creating an 'invisible box' between the image and the button.
          ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
              minimumSize: Size(120, 40),
              backgroundColor: Color.fromARGB(255, 45, 64, 235),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'Roll',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}