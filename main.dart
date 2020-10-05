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
            RaisedButton(child: Text('Change Ques'), onPressed: answerQuestion),
            RaisedButton(
                child: Text('option 1'), onPressed: () => print("Option 1")),
            RaisedButton(
                child: Text('Option 2'),
                onPressed: () {
                  // () is Anonymous function
                  print('Option 2');
                }),
          ],
        ),
      ),
    );
  }
}
