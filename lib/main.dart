import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  var questionList = [
    "what\" is your first name?",
    "what is your second name?"
  ];

  void answerQuestion() {
    questionIndex ++;
    print(questionIndex);
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
            Text(questionList[questionIndex]),
            RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion,),
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
