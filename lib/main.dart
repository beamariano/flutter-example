import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 175, 0, 58),
            Colors.black26,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Center(
        child: Text('Hello world!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            )),
      ),
    );
  }
}
