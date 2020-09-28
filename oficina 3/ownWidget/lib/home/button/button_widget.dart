import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {this.buttonBorderRadius,
      this.buttonText,
      this.buttonColor,
      this.buttonBorderColor});

  final double buttonBorderRadius;
  final String buttonText;
  final Color buttonColor;
  final Color buttonBorderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonBorderRadius),
          side: BorderSide(color: buttonBorderColor),
        ),
        color: buttonColor,
        child: Text(buttonText),
        onPressed: () {},
      ),
    );
  }
}
