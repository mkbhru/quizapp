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
  final questions = const [
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
    if (_questionindex < questions.length) {
      print("you have more questions");
    } else {
      print("NO MOre questions!");
    }
  } //flutter didn't reubilds entire ui again it
  //is so eficient thet it ony rebuilds therequired thing
  // or changed thing

  @override
  Widget build(BuildContext context) {
    //we moved questions from here cause there scope is limited to only this method
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('yo My App'),
        ),
        body: _questionindex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionindex]['questionText'],
                  ),
                  ...(questions[_questionindex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                  //this three sot operator adds all values of a existing list into a
                  // this list
                  /*here list is me .map() question[0][1] list ki values ko ek ek karke anonymous function m
 pass kar raha h answer argument m .jo ki in turn widget bana k de raha h.
.tolist() un widget ki list bana rahi h. or fir spread operator usko spread kar 
raha h body m ek sath jo hamari list ban chuki thi .traversing ka kaam .map kar raha h
Sahi h na ma'am😅 */
                ],
              )
            : Center(
                child: Text(
                  "You've done this!",
                  style: TextStyle(fontSize: 34,
                  color: Colors.pink[400],)
                  
                ),
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
