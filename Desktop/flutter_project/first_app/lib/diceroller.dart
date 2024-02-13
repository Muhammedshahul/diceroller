import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
var currentdice=2;
  void diceroller() {
    setState(() {
      currentdice=Random().nextInt(6)+1;
    });
    print('changing');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentdice.png',
          width: 150,
        ),
        const SizedBox(
          height: 30.1,
        ),
        TextButton(
          onPressed: diceroller,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 30),
              foregroundColor: Colors.amber,
              textStyle: const TextStyle(fontSize: 30)),
          child: const Text(
            'click me',
          ),
        )
      ],
    );
  }
}
