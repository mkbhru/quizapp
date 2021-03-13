import 'package:appp/quiz.dart';
import 'package:appp/result.dart';
import 'package:flutter/material.dart';
// import './questions.dart';
// import './answer.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // throw UnimplementedError();
    return _MyappState(); //this underscore makes this class private
    //and unable to access outside the class
  }
}

class _MyappState extends State<Myapp> {
  //we add generic Myapp toi
//setup connections with Myapp class
  final _questions = const [
    {
      'questionText': 'अगर 3 बिल्लियां 3 चूहे को 3 मिनट में मारती है तो, 100 बिल्लियों को 100 चूहे को मारने में कितना समय लगेगा?',
      'answers': [
        {'text': '100 minute', 'score': 10},
        {'text': '0 minute', 'score': 5},
        {'text': '30 minute', 'score': 5},
        {'text': '3 minute', 'score': 0},
      ],
    },
    {
      'questionText': 'Divide 30 by half and add ten?',
      'answers': [
        {'text': '40.5', 'score': 10},
        {'text': '25', 'score': 5},
        {'text': '70', 'score': 0},
        {'text': 'I know this is a trick question, so NONE. Ha!', 'score': 5},
      ],
    },
    {
      'questionText': 'The answer is really big. ?',
      'answers': [
        {'text': 'the answer', 'score': 10},
        {'text': 'Really big', 'score': 0},
        {'text': 'An elephant', 'score': 5},
        {'text': 'The data given is insufficient', 'score': 5},
      ],
    },
    {
      'questionText': 'How many months have 28 days?',
      'answers': [
        {'text': '1', 'score': 10},
        {'text': '2', 'score': 5},
        {'text': 'All of them.', 'score': 0},
        {'text': 'Depends if there is a leap year or not.', 'score':5 },
      ],
    },
    {
      'questionText': 'You are 3rd place right now in a race. What place are you in when you pass the person in 2nd place?',
      'answers': [
        {'text': 'fourth', 'score': 10},
        {'text': 'Second', 'score': 0},
        {'text': 'First', 'score': 10},
        {'text': 'Third', 'score': 10},
      ],
    },
  ];
  var _questionindex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
   setState(() { _questionindex = 0;
    _totalScore = 0;
   });
     
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionindex = _questionindex + 1;
    }); //because of this set state function we can rerender
    //in every answer
    print(_questionindex);
    if (_questionindex < _questions.length) {
      print("you have more _questions");
    } else {
      print("NO MOre _questionss!");
    }
  } //flutter didn't reubilds entire ui again it
  //is so eficient thet it ony rebuilds therequired thing
  // or changed thing

  @override
  Widget build(BuildContext context) {
    //we moved _questions from here cause there scope
    //is limited to only this method
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('yo My Quiz App'),
        ),
        body: _questionindex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionindex,
                questions: _questions,
              )
            : Result(
                score: _totalScore,
                reset: _resetQuiz,
              ),
      ),
    );
  }
}

//generally we have one widget per file therefore i
//create question.dart
// RaisedButton(
//   child: Text('Answer 2'),
//   onPressed: () => print('answer 2 is chosen'),
// ),
// RaisedButton(
//   child: Text('Answer 3'),
//   onPressed: () {
//     print('answer 3 is chosen');
//   },
// ),
