import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'what\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'what\'s your favorite animal?',
        'answers': ['Rabbit', 'Lion', 'Elephant', 'Tiger'],
      },
      {
        'questionText': 'which is your favorite food cuisine?',
        'answers': ['India', 'Italian', 'Chinese', 'Korean'],
      },
    ];
     return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QUIZ APP'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answers) {
              return Answer(_answerQuestion, answers);
            }).toList()
          ],
        ),
      ),
    );
  }
}
