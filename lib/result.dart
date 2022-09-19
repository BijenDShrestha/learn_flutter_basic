import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  // const Result({Key? key}) : super(key: key);

  final int testScore;
  final Function resetQuiz;

  Result(this.testScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (testScore > 5) {
      resultText = "This is good";
    } else if (testScore > 3) {
      resultText = "This is ok";
    } else {
      resultText = "This is bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          FlatButton(
            onPressed: resetQuiz(),
            child: Text('Reset Quiz'),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
