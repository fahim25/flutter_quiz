import 'package:flutter/material.dart';
import 'package:flutter_quiz/gradiant_container.dart';
import 'package:flutter_quiz/start_screen.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(
//         // backgroundColor: Colors.amber,
//         backgroundColor: Color.fromARGB(255, 47, 5, 120),
//         body: GradientContainer(
//           Color.fromARGB(255, 20, 4, 46),
//           Color.fromARGB(255, 69, 29, 137),
//           Color.fromARGB(255, 81, 67, 104)
//         ),
//       ),
//     ),
//   );
// }

void main() {
  runApp(
    MaterialApp(
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
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
