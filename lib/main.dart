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
      'answers': [
        {'text': '42', 'score': 5},
        {'text': '69', 'score': 10}
      ],
    },
    {
      'question': 'What\'s your favourite color?',
      'answers': [
        {'text': 'purple', 'score': 10},
        {'text': 'orange', 'score': 7},
        {'text': 'mellow', 'score': 4},
        {'text': 'yellow', 'score': 1}
      ],
    },
    {
      'question': 'Where should I go?',
      'answers': [
        {'text': 'BG', 'score': 10},
        {'text': 'DE', 'score': 7},
        {'text': 'HE', 'score': 4},
        {'text': 'relax', 'score': 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
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
            : Result(
                score: _totalScore,
                resetQuiz: _resetQuiz,
              ),
      ),
    );
  }
}
