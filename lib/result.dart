import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Your final score is:',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(totalScore.toString(), style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.normal
          ),),
        ],
      ),
    );
  }
}
