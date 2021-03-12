import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;//final is a runtime constant value
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //to get as much width it can get
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText,
        style: TextStyle(fontSize: 20,
        ),),
        onPressed: selectHandler,
      ),
    );
  }
}
