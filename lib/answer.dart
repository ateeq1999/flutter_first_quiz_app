import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectHandler;

  Answer({
    required this.answerText,
    required this.selectHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // alignment: Alignment.center,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: () => {
          selectHandler(),
        },
      ),
    );
  }
}
