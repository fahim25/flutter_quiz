import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/screens/questions_screen.dart';
import 'package:flutter_quiz/screens/result_screen.dart';
import 'package:flutter_quiz/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAns = [];

  var activeScreen = 'start_screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

  void chooseAns(String ans) {
    selectedAns.add(ans);

    if (selectedAns.length == questions.length) {
      setState(() {
        // selectedAns = [];
        activeScreen = 'result_screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //for if statement
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions_screen') {
      screenWidget = QuestionsScreen(
        onSelectAns: chooseAns,
      );
    }

    if (activeScreen == 'result_screen') {
      screenWidget = ResultScreen(
        chosenAns: selectedAns,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 20, 4, 46),
                Color.fromARGB(255, 69, 29, 137),
                Color.fromARGB(255, 81, 67, 104)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
