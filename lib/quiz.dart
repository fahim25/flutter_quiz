import 'package:flutter/material.dart';
import 'package:flutter_quiz/questions_screen.dart';
import 'package:flutter_quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // it can be null, thats y ? is used
  /*  Widget? activeScreen;

  alt+shift+a

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    // TODO: implement initState
    super.initState();
  } */

  //for removing initState
  var activeScreen = 'strat_screen';
  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionsScreen();
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions_screen') {
      screenWidget = QuestionsScreen();
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
          // child: activeScreen,
          // another method
          /* child: activeScreen == 'strat_screen'
              ? StartScreen(switchScreen)
              : const QuestionsScreen(), */
          child: screenWidget,
        ),
      ),
    );
  }
}
