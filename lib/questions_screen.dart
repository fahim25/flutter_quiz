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
  var currentQuestionIndex = 0;

  void ansQuestion() {
    setState(() {
      // currentQuestionIndex = currentQuestionIndex + 1;
      // currentQuestionIndex += 1;
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ...currentQuestion.getShuffledAns().map((item) {
              return AnsButton(btnText: item, onTap: ansQuestion);
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
      ),
    );
  }
}
