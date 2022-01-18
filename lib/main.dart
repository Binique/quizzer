import 'package:flutter/material.dart';
import 'quizzBrain.dart';

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



  int questionNumber = 0;



  void questionSuivante(){
   
    if (questionNumber<quizzBrain.getQuestionLength() - 1){
      questionNumber++;
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
                child: Text( quizzBrain.getQuestionText(questionNumber),
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
                bool bonneReponse = quizzBrain.getQuestionAnswer(questionNumber);
                setState(() {
                  if (IconResult.length != quizzBrain.getQuestionLength()) {
                    if (bonneReponse == true) {
                      IconResult.add(
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      );
                    } else {
                      IconResult.add(
                        Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      );
                    }
                  }
                });

                questionSuivante();

              },
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              child:
               const Text('Vrai', style: TextStyle(color: Colors.white,fontSize: 20),
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
                bool bonneReponse =  quizzBrain.getQuestionAnswer(questionNumber);
                setState(() {
                    if(IconResult.length != quizzBrain.getQuestionLength()) {
                      if (bonneReponse == false) {
                        IconResult.add(
                          Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        );
                      } else {
                        IconResult.add(
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        );
                      }
                    }
                });

                questionSuivante();

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











