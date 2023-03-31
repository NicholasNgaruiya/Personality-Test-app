import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    //Replaced Container with SizedBox
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        //ElevatedButton to replace RaisedButton.
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          // elevation: 20,
          // shadowColor: Colors.greenAccent,
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
