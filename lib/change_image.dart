import 'package:flutter/material.dart';

class ChangeImage extends StatefulWidget {
  const ChangeImage({super.key});

  @override
  _ChangeImageState createState() => _ChangeImageState();
}

class _ChangeImageState extends State<ChangeImage> {
  var activeImage = 'assets/images/landscape.jpeg';

  void rollDice() {
    setState(() {
      activeImage = 'assets/images/image.jpeg';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeImage, width: 320),
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
