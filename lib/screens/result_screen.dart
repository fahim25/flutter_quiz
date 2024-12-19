import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAns,
  });

  final List<String> chosenAns;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAns.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_ans': questions[i].answers[0],
          'user_ans': chosenAns[i]
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You got 3 out of five'),
            const SizedBox(
              height: 30,
            ),
            const Text('List of ans and questions!'),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
