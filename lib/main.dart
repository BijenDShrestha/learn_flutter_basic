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

  final _questionList = const [
    {
      'questionText': 'what\'s your favorite food?',
      'answers': ['rice', 'momo', 'chowmein']
    },
    {
      'questionText': 'what is your first name?',
      'answers': ['jake', 'mira', 'max']
    },
    {
      'questionText': 'what is your second name?',
      'answers': ['shrestha', 'bhatt', 'rai']
    }
  ];

  void _answerQuestion() {
    if (_questionIndex < _questionList.length) {
      print("if else statement");
    }
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
            ? Quiz(questionList: _questionList, questionIndex: _questionIndex, answerQuestion: _answerQuestion)
            : Result()
      ),
    );
  }
}
