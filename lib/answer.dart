import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  const Answer(this.selectHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          // elevation: 20,
          // shadowColor: Colors.greenAccent,
        ),
        onPressed: selectHandler,
        child: const Text('Answer 1'),
      ),
    );
  }
}
