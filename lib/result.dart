import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("You've done this!",
          style: TextStyle(
            fontSize: 34,
            color: Colors.pink[400],
          )),
    );
  }
}
