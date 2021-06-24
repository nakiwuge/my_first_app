import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // final List<Map<String, Object>> questions;
  final int score;
  final Function reset;

  Result(this.score,this.reset);

  String get result{
    return 'You got $score';
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: [
        Text(result, 
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
        FlatButton(child: Text('Restart Quiz', style: TextStyle(color: Colors.blue),),onPressed: reset)
      ],
    ));
  }
}
