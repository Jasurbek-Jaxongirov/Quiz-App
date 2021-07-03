import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 6) {
      resultText = 'You are awesome';
    } else if (resultScore <= 12) {
      resultText = 'You are likeable';
    } else if (resultScore <= 16) {
      resultText = 'We did not like you';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          resultPhrase,
          style: TextStyle(
              color: Colors.grey, fontSize: 22, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: resetHandler,
          child: Text(
            'Reset Quiz!',
            style: TextStyle(color: Colors.blue),
          ),
        )
      ]),
    );
  }
}
