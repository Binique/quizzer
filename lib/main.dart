import 'package:flutter/material.dart';
import 'quizzBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart' show Alert;

QuizzBrain quizzBrain = QuizzBrain();

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.grey.shade900,
        body: SafeArea(
          child:
          Quizzer() ,


        ),
      ),
    ),
  );
}
class Quizzer extends StatefulWidget {
  const Quizzer({Key? key}) : super(key: key);
    @override
  _QuizzerState createState() => _QuizzerState();
}

class _QuizzerState extends State<Quizzer> {
  List<Icon> IconResult = [];
  int score = 0;

  checkAnswer(bool reponseUtilisateur) {
    bool bonneReponse = quizzBrain.getQuestionAnswer();
    setState(() {
      if (bonneReponse == reponseUtilisateur) {
        score++;
        IconResult.add(Icon(Icons.check, color: Colors.green));
      } else {
        IconResult.add(Icon(Icons.close, color: Colors.red));
      }
      quizzBrain.nextQuestion();
    });
    if (IconResult.length == quizzBrain.getQuestionLength()) {
      Alert(
        context: context,
        title: "Félicitations",
        desc: "Quiz terminé. Vous avez eu $score bonnes réponses.",
      ).show();
      score = 0;
      quizzBrain.reset();
      IconResult = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child:
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
                child: Text( quizzBrain.getQuestionText(),
                  style: TextStyle(color: Colors.white,fontSize: 25.0),textAlign: TextAlign.center,
                ),

            ),
          ),
        ),
        Expanded(
          child:
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
              checkAnswer(true);
              },
              style: TextButton.styleFrom(backgroundColor: Colors.green),

             child:
             const Text('Vrai',style: TextStyle(color: Colors.white,fontSize: 20),
           ),
            ),
        ),
        ),
        Expanded(
          child:
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                checkAnswer(false);
              },
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child:
              const Text('Faux',style: TextStyle(color: Colors.white,fontSize: 20),
              ),

            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: IconResult
            ,
          ),
        ),
      ],
    );
  }


}











