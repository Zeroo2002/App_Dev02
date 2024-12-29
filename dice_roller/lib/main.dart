import 'package:flutter/material.dart'; // Importing to use runApp

// importing our package
import 'package:dice_roller/project/dice_roller.dart';

/*
  Remember: You need to put commas for VSCode to be able to auto-format your code. Put one comma after every positional or named parameter you write in the class constructors.
*/

void main() {
  runApp(
    MaterialApp(
      // root of every android app
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dice Roller',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 0, 6, 92),
        ),
        backgroundColor: Color.fromARGB(255, 98, 105, 207),
        body: DiceRoller(),
      ),
    ),
  );
}

/*
A Column lays out its children in vertical order.
A Row lays out its children in horizontal order.
A Center places its single child at the center of itself.
*/

// Center widget -> Center()
// Color(0xFF1a0250F)
// Colors.color_name
// Color.fromARGB(a, R, G, B)


