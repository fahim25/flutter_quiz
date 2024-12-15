import 'package:flutter/material.dart';

//if we use var we cant use const in the whole function because var can be changed
// var startGradient = Alignment.topLeft;
// var endGradient = Alignment.bottomRight;
const startGradient = Alignment.topLeft;
const endGradient = Alignment.bottomRight;

//for widgets
class GradientContainer extends StatelessWidget {
  const GradientContainer(
      this.outputColors1, this.outputColors2, this.outputColors3,
      {super.key});
  // const GradientContainer(this.outputColors, {super.key});

  //can take the colors in a list
  // final List<Color> outputColors;
  final Color outputColors1;
  final Color outputColors2;
  final Color outputColors3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [outputColors1, outputColors2, outputColors3],
          begin: startGradient,
          end: endGradient,
        ),
      ),
      child: const Center(
        child: Text("Hello From othe component"),
      ),
    );

    // throw UnimplementedError();
  }
}
