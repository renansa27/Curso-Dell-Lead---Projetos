import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({this.text, this.textSize, this.textColor});

  final String text;
  final double textSize;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: textSize, color: textColor),
      ),
    );
  }
}
