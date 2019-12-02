import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final Function restHandler;

  Result(this._resultScore, this.restHandler);

  String get resultPhrase {
    String resultText;

    if (_resultScore > 20) {
      resultText = ' You are Excellent ...';
    } else {
      resultText = 'You are good ...';
    }
    ;
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: restHandler,
            child: Text('Reset Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
