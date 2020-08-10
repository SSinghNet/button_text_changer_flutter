import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String theText;
  MyText(this.theText);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        theText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
