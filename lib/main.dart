import 'package:appp/quiz.dart';
import 'package:appp/result.dart';
import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

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
      'questionText': 'What is your favourite color!!!!!',
      'answers': [
        'Black',
        'red',
        'Green',
        'White',
      ]
    },
    {
      'questionText': 'what is your favourite animal!!',
      'answers': ['tiger', 'Lion', 'Peacock', 'King Cobra']
    },
    {
      'questionText': 'what is your favourite number!',
      'answers': ['One', 'Three', 'Nine', 'Six']
    }
  ];
  var _questionindex = 0;
  void _answerQuestion() {
    setState(() {
      _questionindex = _questionindex + 1;
    }); //because of this set state function we can rerender
    //in every answer
    print(_questionindex);
    if (_questionindex < _questions.length) {
      print("you have more _questions");
    } else {
      print("NO MOre _questions!");
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
          title: Text('yo My App'),
        ),
        body: _questionindex < _questions.length
            ? Quiz(answerQuestion: _answerQuestion,
            questionIndex: _questionindex,
            questions: _questions,)
            : Result(), 
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
