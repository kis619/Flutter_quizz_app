import 'package:flutter/material.dart';
import './answer.dart';

class ListAnswers extends StatelessWidget {
  final VoidCallback answerQuestion;
  final answers;
  const ListAnswers({super.key, required this.answerQuestion, required this.answers});

  @override
  Widget build(BuildContext context) {
    return ListBody(
      children: [
        Answer(
          answerText: answers[0].toString(),
          selectHandler: answerQuestion,
        ),
        Answer(
          answerText: answers[1].toString(),
          selectHandler: answerQuestion,
        ),
        Answer(
          answerText: answers[2].toString(),
          selectHandler: answerQuestion,
        ),
        Answer(
          answerText: answers[3].toString(),
          selectHandler: answerQuestion,
        ),
      ],
    );
  }
}
