import 'package:flutter/material.dart';

class ModifiedText extends StatelessWidget {
  String text;
  Color color;
  double size;
  TextAlign align;

  ModifiedText({Key key, this.text, this.color, this.size, this.align})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        text,
        textAlign: align,
        style: TextStyle(
          color: Colors.white,
          fontSize: size,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
