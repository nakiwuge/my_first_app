import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
   final String answerText;
   final Function handleAnswering;

  Answer(this.answerText, this.handleAnswering);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: handleAnswering,
        ));
  }
}
