import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    if (_questionIndex < _questions.length) {
      print("we have more questions");
    } else {
      print('no more questions');
    }

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  } //_answerQuestion

  final _questions = const [
    {
      'questionText': 'What shape is a mandatory traffic sign?',
      'answers': [
        {'text': 'Tringle', 'score': 0},
        {'text': 'Circular', 'score': 1},
        {'text': 'Rectangular', 'score': 0},
        {'text': 'All of the above', 'score': 0}
      ],
    },
    {
      'questionText':
          "If you're involved in a motor accident, how long do you have to report it to the nearest police station?",
      'answers': [
        {'text': '12 hours', 'score': 0},
        {'text': '48 hours', 'score': 0},
        {'text': '24 hours', 'score': 1},
        {'text': '72 hours', 'score': 0}
      ],
    },
    {
      'questionText':
          "Your insurance has expired. How long can you legally drive your vehicle before you renew it?",
      'answers': [
        {'text': '0 days', 'score': 1},
        {'text': '1 week', 'score': 0},
        {'text': '1 month', 'score': 0},
        {'text': '3 days', 'score': 0}
      ],
    },
    {
      'questionText':
          "A PUCC (Pollution Under Control Certificate) is valid for how long from the date of issue?",
      'answers': [
        {'text': '12 months', 'score': 1},
        {'text': '6 months', 'score': 0},
        {'text': '24 months', 'score': 0},
        {'text': '9 months', 'score': 0}
      ],
    },
    {
      'questionText':
          "Once you have obtained your learner's licence, it is valid for how long?",
      'answers': [
        {'text': '1 month', 'score': 0},
        {'text': '1 year', 'score': 0},
        {'text': '3 months', 'score': 0},
        {'text': '6 months', 'score': 1}
      ],
    },
  ]; // _questions

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: _questionIndex < _questions.length //condition
            ? Quiz(
                answerQuestion: _answerQuestion, //True
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
