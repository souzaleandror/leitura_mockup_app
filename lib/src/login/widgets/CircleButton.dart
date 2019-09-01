import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String texto;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final double height;
  final double width;
  final Icon icon;
  final Function onTap;

  CircleButton(
      {this.texto = "",
      this.backgroundColor,
      this.textColor = Colors.white,
      this.borderColor,
      this.height = 60,
      this.width,
      this.icon,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Material(
        borderRadius: BorderRadius.circular(40),
        color: backgroundColor == null
            ? Theme.of(context).accentColor
            : backgroundColor,
        child: InkWell(
          onTap: onTap,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: borderColor == null
                    ? null
                    : Border.all(color: borderColor)),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                (icon == null ? Container() : icon),
                Container(
                  width: 10,
                ),
                Text(
                  texto,
                  style: TextStyle(
                      color: textColor == null ? Colors.white : textColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
