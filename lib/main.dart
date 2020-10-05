import 'package:flutter/material.dart';
import './question.dart';

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
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  var questions = [
    'What\'s your favourite color?',
    "What's your favourite animal?",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            RaisedButton(child: Text('Male'), onPressed: answerQuestion),
            RaisedButton(
                child: Text('Female'), onPressed: () => print("Female")),
            RaisedButton(
                child: Text('Others'),
                onPressed: () {
                  // () is Anonymous function
                  print('Others');
                }),
          ],
        ),
      ),
    );
  }
}
