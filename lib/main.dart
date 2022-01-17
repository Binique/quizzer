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
                child:
                Text('Le texte de la question',
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
            children: [
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
              ), Icon(
                Icons.check,
                color: Colors.green,
              ), Icon(
                Icons.check,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ],
    );
  }
}











