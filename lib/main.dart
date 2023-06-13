import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  const colorArray = [
    Color.fromARGB(255, 175, 0, 58),
    Colors.black26,
  ];

  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colorArray),
      ),
    ),
  );
}
