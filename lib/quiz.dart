import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key? key}) : super(key: key);

  final List<Map<String, Object>> questionList;
  final int questionIndex;
  final VoidCallback answerQuestion;


  Quiz({required this.questionList,required this.questionIndex,required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    
    return Column(
                children: [
                  Question(
                      questionList[questionIndex]['questionText'] as String),
                  ...(questionList[questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(answerQuestion, answer);
                  }).toList()
                ],
              );
  }
}