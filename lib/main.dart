import 'package:flutter/material.dart';

import './question.dart';

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

  var questionList = [
    "what\" is your first name?",
    "what is your second name?"
  ];

  void _answerQuestion() {
    setState(() {
          _questionIndex ++;
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
        body: Column(
          children: [
            Question(questionList[_questionIndex]),
            RaisedButton(child: Text("Answer 1"), onPressed: _answerQuestion,),
            RaisedButton(child: Text("Answer 2"), onPressed: () => print("anonymous print"),),
            RaisedButton(child: Text("Answer 3"), onPressed: () {
              print("in curly braces");
            }),
          ],
        ),
      ),
    );
  }
}
