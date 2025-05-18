import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {

  const StyledText(this.text, {super.key, this.fontFamily = "Raleway"});

  final String text;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontFamily: fontFamily
      ),
    );
  }
}