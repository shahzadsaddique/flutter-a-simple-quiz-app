import 'package:flutter/material.dart';
import 'package:flutter_a_simple_quiz_app/quiz.dart';
import 'package:flutter_a_simple_quiz_app/result.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore +=score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz(){
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'question': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 5},
          {'text': 'Red', 'score': 4},
          {'text': 'Green', 'score': 3},
          {'text': 'Blue', 'score': 2},
          {'text': 'White', 'score': 1},
        ]
      },
      {
        'question': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 5},
          {'text': 'Snake', 'score': 4},
          {'text': 'Elephant', 'score': 3},
          {'text': 'Lion', 'score': 2},
          {'text': 'Dog', 'score': 1},
        ]
      },
      {
        'question': 'What\'s your favorite programming language?',
        'answers': [
          {'text': 'Java', 'score': 5},
          {'text': 'Dart', 'score': 4},
          {'text': 'C++', 'score': 3},
          {'text': 'Python', 'score': 2},
          {'text': 'C#', 'score': 1},
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
