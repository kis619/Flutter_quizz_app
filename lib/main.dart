import 'package:flutter/material.dart';
import 'package:guide_basics/result.dart';

import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => {runApp(const MyApp())};

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'How old are you?',
      'answers': ['42', '69'],
    },
    {
      'question': 'What\'s your favourite color?',
      'answers': ['purple', 'orange', 'mellow', 'yellow'],
    },
    {
      'question': 'Where should I go?',
      'answers': ['BG', 'DE', 'HE', 'relax'],
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(
      () {
        _questionIndex += 1;
      },
    );
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first amazing flutter app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : const Result(),
      ),
    );
  }
}
