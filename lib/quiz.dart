import 'package:flutter/material.dart';
import './question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function buttonPress;
  final questionIndex;

  Quiz(
      {@required this.questions,
      @required this.buttonPress,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answer'] as List<Map<String,Object>>).map((answer) {
          return Answer(() => buttonPress(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
