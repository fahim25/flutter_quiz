import 'package:flutter/material.dart';

class QuestionsIdentifiers extends StatelessWidget {
  const QuestionsIdentifiers(
      {super.key, required this.isCorrectAns, required this.questionIndex});

  final int questionIndex;
  final bool isCorrectAns;

  @override
  Widget build(Object context) {
    final questionNumber = questionIndex + 1;

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAns
            ? const Color.fromARGB(255, 37, 219, 158)
            : const Color.fromARGB(255, 238, 66, 124),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}
