import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextBlock extends StatelessWidget {
  const TextBlock(this.color, {super.key});

  final Color color;

  Widget build(context) {
    return Text(
      'This is some text',
      style: TextStyle(
        color: color,
        fontFamily: "",
        fontSize: 32.0,
      ),
    );
  }
}