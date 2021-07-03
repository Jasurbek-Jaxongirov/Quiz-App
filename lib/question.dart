import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionString;
  const Question(this.questionString);

  @override
  Widget build(BuildContext context) =>
      Container(
      width: double.infinity, 
      margin: EdgeInsets.all(10.0),
      child: Text(
        questionString,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
      );
}
