import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color',
      'What\'s your favourite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My app'),
        ),
        body: Column(children: [
          Text(
            questions[_questionIndex],
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: const Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: () => print('Answer 2 chosen!'),
            child: const Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: () {
              print('Answer 3 chosen');
            },
            child: const Text(' Answer 3'),
          ),
          ElevatedButton(
            onPressed: () => print('Answer 4 chosen!'),
            child: const Text('Answer 4'),
          )
        ]),
      ),
    );
  }
}
