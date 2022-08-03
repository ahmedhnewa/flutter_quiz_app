import 'package:flutter/material.dart';

import 'questions.dart';
import 'answers.dart';

class Quiz extends StatelessWidget {
  final Function(int score) answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz({
    required this.answerQuestion,
    required this.questions,
    required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['question'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer((answerText) => {answerQuestion(answer['score'] as int)}, answer['text'] as String);
        }).toList()
      ],
    );
  }
}
