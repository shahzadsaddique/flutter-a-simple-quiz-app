import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var totalScore;
  Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'You did it! \n Your scores are: ' + this.totalScore.toString(),
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Reset quiz',
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: this.resetQuiz,
          )
        ],
      ),
    );
  }
}
