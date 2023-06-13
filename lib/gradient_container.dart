import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorArray, {super.key});

  final List<Color> colorArray;

  void rollDice() {
    // return?
  }

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colorArray,
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/landscape.jpeg', width: 320),
              TextButton(
                  onPressed: rollDice, child: const StyledText('Kamusta?')),
            ],
          ),
        ));
  }
}
