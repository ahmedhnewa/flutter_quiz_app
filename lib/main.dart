import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  // final answers = [];
  int totalScore = 0;
  String answersText = 'Your answers are: ';
  final _questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Green', 'score': 14},
        {'text': 'Yellow', 'score': 12},
        {'text': 'Red', 'score': 3},
        {'text': 'Blue', 'score': 93}
      ]
    },
    {
      'question': 'What is your favorite programming language?',
      'answers': [
        {'text': 'Kotlin', 'score': 64},
        {'text': 'Carbon', 'score': 54},
        {'text': 'Javascript', 'score': 32}
      ]
    },
    {
      'question': 'Did you go to school?',
      'answers': [
        {'text': 'No', 'score': 90},
        {'text': 'Yes', 'score': 32}
      ]
    },
    {
      'question': 'Do you hate dart?',
      'answers': [
        {'text': 'No', 'score': 70},
        {'text': 'Yes', 'score': 150}
      ]
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;

      totalScore += score;
      if (!(_questionIndex <= _questions.length - 1)) {
 /*       answers.forEach((element) {
          answersText += "$element, ";
        });*/
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _questionIndex = 0;
              totalScore = 0;
            });
          },
          backgroundColor: Colors.accents.first.shade400,
          child: const Icon(Icons.restart_alt),
        ),
        appBar: AppBar(
          title: Text('Ahmed Hnewa'),
        ),
        body: _questionIndex <= _questions.length - 1
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(totalScore),
      ),
    );
  }
}
