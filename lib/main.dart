import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
    final _questions = const [
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
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : const Result()),
    );
  }
}
