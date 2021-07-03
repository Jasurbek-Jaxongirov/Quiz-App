import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function clickHandler;
  final String answer;
  Answer(this.clickHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5.0),
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          answer,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: clickHandler,
      ),
    );
  }
}
