import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/img/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(170, 255, 255, 255),
          ),
          //another approch of Opacity
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     "assets/img/quiz-logo.png",
          //     width: 300,
          //   ),
          // ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Chalange your flutter skills!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(
                color: const Color.fromARGB(255, 255, 253, 253),
              ),
            ),
            // child: const Text(
            icon: const Icon(Icons.arrow_right_alt),
            // with icon its called label
            label: const Text(
              "Start Quiz!",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
