import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  Color getColor() {
    if (answerText == "Green") return Colors.green;
    if (answerText == "Yellow") return Colors.yellow;
    if (answerText == "Red") return Colors.red;
    if (answerText == "Blue") return Colors.blue;

    return Colors.redAccent;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(getColor()),
        ),
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () => selectHandler(answerText),
      ),
    );
  }
}
