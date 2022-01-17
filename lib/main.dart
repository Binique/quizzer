import 'package:flutter/material.dart';

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
  List<Icon> IconResult = [
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.check,
      color: Colors.green,
    ),
  ];
  List<Text> listQuestions = [
    Text('Le texte de la question',
      style: TextStyle(color: Colors.white,fontSize: 25.0),textAlign: TextAlign.center,
    ),
    Text('Le texte est la deuxieme question',
      style: TextStyle(color: Colors.white,fontSize: 25.0),textAlign: TextAlign.center,
    ),
    Text('Le texte est la troisieme question',
      style: TextStyle(color: Colors.white,fontSize: 25.0),textAlign: TextAlign.center,
    ),
    Text('Le texte est la quatrieme question',
      style: TextStyle(color: Colors.white,fontSize: 25.0),textAlign: TextAlign.center,
    ),
  ];

int questionNumber = 0;


  void changeIconCheck (){
    setState(() {
      IconResult.add( Icon(Icons.check, color: Colors.green));
    });
  }
  void changeIconClose (){
    setState(() {
      IconResult.add( Icon(Icons.close, color: Colors.red));
    });
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
                child: listQuestions[questionNumber],

            ),
          ),
        ),
        Expanded(
          child:
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                questionNumber++;
              changeIconCheck();
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
                questionNumber++;
              changeIconClose();
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











