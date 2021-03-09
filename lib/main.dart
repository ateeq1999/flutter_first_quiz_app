import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color?',
      'what\'s your favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My AppBar Title'),
          ),
          body: Column(
            children: [
              Text('The Question'),
              ElevatedButton(
                child: Text('Answer 1'),
                onPressed: null,
              ),
              ElevatedButton(
                child: Text('Answer 2'),
                onPressed: null,
              ),
              ElevatedButton(
                child: Text('Answer 3'),
                onPressed: null,
              ),
            ],
          )),
    );
  }
}
