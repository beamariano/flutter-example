import 'package:first_app/change_image.dart';
import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';
import 'package:first_app/change_image.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(this.colorArray, {super.key});

  final List<Color> colorArray;

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
        child: Center(child: ChangeImage()));
  }
}
