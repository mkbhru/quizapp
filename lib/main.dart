import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  var questionindex = 0;
  void answerQuestion() {
    questionindex = questionindex + 1;
    print(questionindex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your favourite color',
      'what is your favourite animal',
      'what is your favourite number',
      'what is your favourite name',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('yo My App'),
        ),
        body: Column(
          children: [
            Text(questions[questionindex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
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

//old1
// import 'package:flutter/material.dart';

// void main() => runApp(Myapp());

// class Myapp extends StatelessWidget {
//   void answerQuestion() {
//     print('Answer chosen!');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('yo My App'),
//         ),
//         // body: Text('this is my default text!'),/
//         // to add multiple widgets we use invisible widgetshere column
//         body: Column(
//           children: [
//             Text('The Question!'),
//             RaisedButton(
//               child: Text('Answer 1'),
//               // onPressed: null, with null flutter automatically disables the button
//               onPressed:
//                   answerQuestion, //we used a pointer here instead of a function
//             ),
//             RaisedButton(
//               child: Text('Answer 2'),
//               onPressed:
//                   answerQuestion, //instead of passing the function we passes the pointer which tells
//               //not only pass the result to button but instead run function every time the button pressed
//             ),
//             RaisedButton(
//               child: Text(
//                   'Answer 3'), //this gives the flutter full control over that function it dont need to depend on the
//               //function insted it run the whole function whenever it needs it
//               onPressed: answerQuestion,
//             ),
//             RaisedButton(
//               child: Text('answer 4'),
//               onPressed: () => print('answer 4 chosen'),
//             ),
//             RaisedButton(
//                 child: Text('answer 5'),
//                 onPressed: () {//anonymous function
//                   print('answer 5 chosen');
//                   print('yo');
//                 } //if function is long trry out this
//                 )
//           ],
//         ),
//       ),
//     );
//   }
// }
