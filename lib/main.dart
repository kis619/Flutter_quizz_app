import 'package:flutter/material.dart';
import 'package:guide_basics/answer.dart';

import './listAnswers.dart';
import './question.dart';

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
  final questions = const [
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
        body: Column(
          children: [
            Question(
                questionText: questions[_questionIndex]['question'].toString()),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answerText: answer, selectHandler: _answerQuestion);
            }).toList(),
            // ListAnswers(
            // answerQuestion: _answerQuestion,
            // answers: questions[_questionIndex]['answers'],
            // ),
          ],
        ),
      ),
    );
  }
}
