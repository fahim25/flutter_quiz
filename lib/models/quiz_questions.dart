class QuizQuestions {
  QuizQuestions({required this.text, required this.answers});
  final String text;
  final List<String> answers;

  List<String> getShuffledAns() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
