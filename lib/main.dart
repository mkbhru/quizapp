import 'package:flutter/material.dart';
import './questions.dart';

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
  //we add generic Myapp to
//setup connections with Myapp class
  var _questionindex = 0;
  void _answerQuestion() {
    setState(() {
      _questionindex = _questionindex + 1;
    }); //because of this set state function we can rerender
    //in every answer
    print(_questionindex);
  } //flutter didn't reubilds entire ui again it
  //is so eficient thet it ony rebuilds therequired thing
  // or changed thing

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your favourite color!',
      'what is your favourite animal!',
      'what is your favourite number!',
      'what is your favourite name!',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('yo My App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionindex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('answer 2 is chosen'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('answer 3 is chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}

//generally we have one widget per file therefore i
//create question.dart
