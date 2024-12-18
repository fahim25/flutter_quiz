import 'package:flutter/material.dart';
import 'package:flutter_quiz/ans_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Questions',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AnsButton(
            btnText: 'Answer 1',
            onTap: () {},
          ),
          AnsButton(
            btnText: 'Answer 2',
            onTap: () {},
          ),
          AnsButton(
            btnText: 'Answer 3',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
