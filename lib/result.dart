import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'Completed';
    if (resultScore >= 3) {
      resultText = 'You Passed \nCongratulations!!!';
    } else {
      resultText = 'Failed \nTry Again';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            onPressed: resetHandler,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
