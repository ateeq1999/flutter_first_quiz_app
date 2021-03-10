import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  final _questions = const [
    {
      'questionText': 'what\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephent', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ]
    },
    {
      'questionText': 'who\'s your favorite instructor?',
      'answers': [
        {'text': 'Zamo', 'score': 5},
        {'text': 'Aymen', 'score': 3},
        {'text': 'Max', 'score': 1},
        {'text': 'Ateeq', 'score': 7},
      ]
    },
  ];

  var _questionIndex = 0;
  int _totalscore = 0;

  void _restartQuiz() {
    setState(() {
      _totalscore = 0;
      _questionIndex = 0;
    });
    print('Restarting the Quiz.');
  }

  void _answerQuestions(int score) {
    this._totalscore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    print(_totalscore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My AppBar Title'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestions: _answerQuestions,
              )
            : Result(
                resultScore: _totalscore,
                restartQuiz: _restartQuiz,
              ),
      ),
    );
  }
}
