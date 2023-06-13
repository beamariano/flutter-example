import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random(); // global

class ChangeImage extends StatefulWidget {
  const ChangeImage({super.key});

  @override
  _ChangeImageState createState() => _ChangeImageState();
}

class _ChangeImageState extends State<ChangeImage> {
  var currentNum = 1;

  void rollDice() {
    setState(() {
      currentNum = randomizer.nextInt(4) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/image-$currentNum.jpeg', width: 320),
        SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            // padding: const EdgeInsets.only(top: 30)),
            child: const Text('Click to Change Image')),
      ],
    );
  }
}
