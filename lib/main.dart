import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(const MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Bunny', 'Cat', 'Dog', 'Chicken']
      },
      {
        'questionText': 'Who\'s your favourite lecturer?',
        'answers': ['Brad', 'Joe', 'Fireship']
      },
      {
        'questionText': 'Who was the first president of Kenya',
        'answers': ['Moi', 'Uhuru', 'Kibaki', 'Ruto', 'None of the above']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exam app'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: _questionIndex < questions.length
            ? Column(children: [
                Question(
                  questions[_questionIndex]['questionText'] as String,
                ),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ])
            : const Center(
                child: Text(
                  'Congratulations You did it',
                ),
              ),
      ),
    );
  }
}
