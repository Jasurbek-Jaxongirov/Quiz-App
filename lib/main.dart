import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      ++_questionIndex;
      print(_totalScore);
    });
  }

  var _questions = [
    {
      'questionText': 'What is your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Blue', 'score': 2},
        {'text': 'Green', 'score': 3},
        {'text': 'Yellow', 'score': 4}
      ]
    },
    {
      'questionText': 'What is your favourite anima?',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Hedgehog', 'score': 3},
        {'text': 'Lion', 'score': 4}
      ]
    },
    {
      'questionText': 'What is your favourite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Steve Grifith', 'score': 2},
        {'text': 'Naveen Saggam', 'score': 3},
        {'text': 'Farkhod Dadajonov', 'score': 4}
      ]
    },
  ];
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Quiz App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex)
              : Result(_totalScore, _resetQuiz),
        ),
      );
}
