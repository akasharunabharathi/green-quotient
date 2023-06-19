class Question {
  String prompt;
  int score;
  int questionNumber;
  bool isNegative = true;
  Question({this.prompt, this.questionNumber, this.isNegative});


}

List<Question> questions = [
  Question(prompt: "Environmental issues are important problems to be solved.", questionNumber: 1, isNegative: false),
  Question(prompt: "Individual action is important to solve environmental problems.", questionNumber: 2, isNegative: false),
  Question(prompt: "Individual action will not improve the environment.", questionNumber: 3, isNegative: true),
  Question(prompt: "For me, there are more important things than environmental issues.", questionNumber: 4, isNegative: true),
  Question(prompt: "My concern for environmental issues is not particularly high.", questionNumber: 5, isNegative: true),
];

// TODO: Get the right prompts, add "reversed" to constructor.