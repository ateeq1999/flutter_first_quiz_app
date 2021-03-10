import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartQuiz;

  Result({required this.resultScore, required this.restartQuiz});

  String get resultPhrase {
    var result;
    if (this.resultScore <= 8) {
      result = 'You are awesome and innocent';
    } else if (this.resultScore <= 12) {
      result = 'You are likeable';
    } else if (this.resultScore <= 16) {
      result = 'You are .... strange?';
    } else {
      result = 'you are so bad.';
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              // backgroundColor: Colors.blue,
              fontWeight: FontWeight.bold,
              // color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () => restartQuiz(),
            child: Text('Restart The Quiz!'),
          )
        ],
      ),
    );
  }
}
