import 'package:flutter/material.dart';

class Para extends StatelessWidget {
  String text;

  Para(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Text(this.text, textAlign: TextAlign.center, textDirection: TextDirection.ltr),
    );
  }
}
