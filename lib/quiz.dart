import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final questions;
  final questionIndex;
  final Function answerQuestion;

  Quiz({Key key, this.questions, this.questionIndex, this.answerQuestion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]['question'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
