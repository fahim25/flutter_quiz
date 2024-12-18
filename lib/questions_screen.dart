import 'package:flutter/material.dart';
import 'package:flutter_quiz/ans_button.dart';
import 'package:flutter_quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...currentQuestion.answers.map((item) {
            return AnsButton(btnText: item, onTap: () {});
          })

          /* AnsButton(
            btnText: currentQuestion.answers[0],
            onTap: () {},
          ),
          AnsButton(
            btnText: currentQuestion.answers[1],
            onTap: () {},
          ),
          AnsButton(
            btnText: currentQuestion.answers[2],
            onTap: () {},
          ),
          AnsButton(
            btnText: currentQuestion.answers[3],
            onTap: () {},
          ), */
        ],
      ),
    );
  }
}
