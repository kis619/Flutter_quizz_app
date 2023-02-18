import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetQuiz;
  const Result({super.key, required this.score, required this.resetQuiz});

  String get resultPhrase {
    String message;

    if (score <= 8) {
      message = 'You are awesome';
    } else if (score == 12) {
      message = 'You are awosemer';
    } else {
      message = 'Still awesome';
    }
    return message;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
              foregroundColor: MaterialStateProperty.all(Colors.amber),
            ),
            onPressed: resetQuiz,
            child: const Text('Restart Quiz!'),
          )
        ],
      ),
    );
  }
}
