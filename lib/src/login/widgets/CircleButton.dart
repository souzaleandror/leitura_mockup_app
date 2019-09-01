import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String texto;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;

  CircleButton(
      {this.texto = "",
      this.backgroundColor,
      this.textColor = Colors.white,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: backgroundColor == null
              ? Theme.of(context).accentColor
              : backgroundColor,
          borderRadius: BorderRadius.circular(40),
          border: borderColor == null ? null : Border.all(color: borderColor)),
      alignment: Alignment.center,
      child: Text(
        texto,
        style: TextStyle(
            color: textColor == null ? Colors.white : textColor,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
