import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int indx;
  final Function handleAnswering;

  Quiz(this.handleAnswering, this.questions, this.indx);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[indx]['question']),
        ...(questions[indx]['answers'] as List<Map<String,Object>>)
            .map((e) => Answer(e['text'], ()=>handleAnswering(e['score']))),
      ],
    );
  }
}
