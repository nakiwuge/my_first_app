import 'package:flutter/material.dart';
import 'package:my_first_app/result.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var indx = 0;
  var total = 0;

  static const questions = [
    {
      'question': 'What is your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'black', 'score': 5},
        {'text': 'green', 'score': 15},
      ],
    },
    {
      'question': 'What is the favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 15},
        {'text': 'Cat', 'score': 2},
        {'text': 'Tiger', 'score': 5}
      ],
    },
    {
      'question': 'Who is the boss ?',
      'answers': [
        {'text': 'Miriam', 'score': 15},
        {'text': 'Naki', 'score': 2},
        {'text': 'Zelly', 'score': 5}
      ]
    }
  ];

  void handleAnswering(int score) {
    if (indx < questions.length) {
    
      setState(() {
        indx = indx + 1;
        total = total + score;
      });
    }
  }
 void reset() {
    setState(() {
        indx = 0;
        total = 0;
      });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('First App'),
      ),
      body: indx > questions.length - 1
          ? Result(total,reset)
          : Quiz(handleAnswering, questions, indx),
    ));
  }
}
