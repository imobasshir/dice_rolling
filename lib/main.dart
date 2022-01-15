import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dicee',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22.0,
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: Colors.pinkAccent,
        ),
        backgroundColor: Colors.pinkAccent,
        body: DiceRoll(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DiceRoll extends StatefulWidget {
  const DiceRoll({Key? key}) : super(key: key);

  @override
  _DiceRollState createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  dicePressed() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  dicePressed();
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  dicePressed();
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
