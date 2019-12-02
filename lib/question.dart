import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String QuestionsText;

  Question(this.QuestionsText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:  EdgeInsets.all(20),
      child: Text(
        QuestionsText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
