import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quiz({@required this.questions,@required this.answerQuestion,@required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
        //this three sot operator adds all values of a existing list into a
        // this list
        /*here list is me .map() question[0][1] list ki values ko ek ek karke anonymous function m
 pass kar raha h answer argument m .jo ki in turn widget bana k de raha h.
.tolist() un widget ki list bana rahi h. or fir spread operator usko spread kar 
raha h body m ek sath jo hamari list ban chuki thi .traversing ka kaam .map kar raha h
Sahi h na ma'am😅 */
      ],
    );
  }
}
