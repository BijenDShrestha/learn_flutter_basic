import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

// _ is use to indicate private
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questionList = const [
    {
      'questionText': 'what\'s your favorite food?',
      'answers': [
        {'text': 'rice', 'score': 5},
        {'text': 'momo', 'score': 1},
        {'text': 'chowmein', 'score': 3},
      ],
    },
    {
      'questionText': 'what is your first name?',
      'answers': [
        {'text': 'jack', 'score': 5},
        {'text': 'marie', 'score': 5},
        {'text': 'bob', 'score': 5},
      ],
    },
    {
      'questionText': 'what is your second name?',
      'answers': [
        {'text': 'shrestha', 'score': 5},
        {'text': 'williams', 'score': 5},
        {'text': 'brown', 'score': 5},
      ],
    }
  ];

  void _answerQuestion(int score) {
    // if (_questionIndex < _questionList.length) {
    //   print("if else statement");
    // }

    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is app bar"),
        ),
        body: _questionIndex < _questionList.length
            ? Quiz(
                questionList: _questionList,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
