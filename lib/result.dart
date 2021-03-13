import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;
  Result({
    @required this.score,
    @required this.reset,
  }); //named argumrnt
  String get resultPhrase {
    //we use getter here to calculate dynamically value of text
    String text;
    if (score <= 13) {
      text = 'You are awesome and innocent ❤❤🤣💖😎 ';
    } else if (score <= 26) {
      text = 'pretty likable😂😂';
    } else if (score <= 39) {
      text = 'You are ... strange😊😊';
    } else {
      text = 'you are not so good 😒😒';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Your score out of 50 is'),
          Text((50-score).toString(),
        style: TextStyle(fontSize: 27),),
          Container(margin: EdgeInsets.all(39),
            child: Text(resultPhrase, //here getter id uded as a property
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink[400],
                  
                )),
          ),
          FlatButton(onPressed: reset,
          color: Colors.amber, 
           child: Text('Restart Quiz!')),
          // TextButton(onPressed: reset, child: Text('wanna Try again')),
          // RaisedButton(onPressed: reset),
        ],
      ),
    );
  }
}
