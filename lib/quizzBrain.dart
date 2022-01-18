import 'question.dart';

 class  QuizzBrain {

  List<Question>_Questions= [
    Question('Question 1', true),
    Question('Question 2', false),
    Question('Question 3', false),
    Question('Question 4', true),
  ];





  String getQuestionText(int questionNumber) {
    return _Questions[questionNumber].listQuestions;
  }

  bool getQuestionAnswer(int questionNumber) {
    return _Questions[questionNumber].reponses;
  }
  int getQuestionLength() {
    return _Questions.length;
  }

}