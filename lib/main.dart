import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

/*void main() {
  runApp(MyApp());
}*/
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
// important comment by harish ::: adding underscore to class names turns class into a private class in dart..

class _MyAppState extends State<MyApp> {

  final _questions = const [
    {
      'questionText': 'what\'s your fav color..?',
      'answer': [
        {
          'text': 'red','score': 10
        },
        {
          'text': 'black','score': 5
        },
        {
          'text': 'blue','score': 5
        },
        {
          'text': 'green','score': 5
        },
      ]
    },

    {
      'questionText': 'what\'s your fav animal..?',
      'answer': [
        {
          'text': 'dog','score': 10
        },
        {
          'text': 'cat','score': 5
        },
        {
          'text': 'fish','score': 5
        },
        {
          'text': 'chicken','score': 5
        },
      ]
    },
    {
      'questionText': 'what\'s your fav car..?',
      'answer': [
        {
          'text': 'suzuki','score': 10
        },
        {
          'text': 'bmw','score': 5
        },
        {
          'text': 'audi','score': 5
        },
        {
          'text': 'tata','score': 5
        },
      ]
    },
  ];

  var _queIndex = 0;

  var _totalScore = 0 ;

  void _resetQuiz(){
    setState(() {
      _queIndex = 0;
      _totalScore = 0 ;
    });
  }

  void _buttonpress(int score ) {

    _totalScore +=  score;

    setState(() {
      _queIndex = _queIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Harish flutter app"),
        ),
        body: _queIndex < _questions.length
            ? Quiz(
                buttonPress: _buttonpress,
                questions: _questions,
                questionIndex: _queIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
