import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var firstDice = 5;
  var secondDice = 6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  firstDice = Random().nextInt(6) + 1;
                  print("Dice 1 is pressed");
                });
              },
              child: Image.asset('images/dice$firstDice.png'),
            ),
          ),
          Expanded(
            flex: 2,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  secondDice = Random().nextInt(6) + 1;
                  print("Dice 1 is pressed");
                });
              },
              child: Image.asset('images/dice$secondDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
