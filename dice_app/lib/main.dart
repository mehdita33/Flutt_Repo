import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade800,
        appBar: AppBar(
          backgroundColor: Colors.teal.shade400,
          title: Text(
            'Dice App',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,

            ),
          ),
        ),
        body: Dice_App(),
      ),
    ),
  );
}

class Dice_App extends StatefulWidget {
  const Dice_App({Key? key}) : super(key: key);

  @override
  State<Dice_App> createState() => _Dice_AppState();
}

class _Dice_AppState extends State<Dice_App> {
  int RightDice = 1;
  int LeftDice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState((){
                  LeftDice = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage(
                  'images/dice${LeftDice}.png',
                ),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState((){
                  RightDice = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage(
                  'images/dice${RightDice}.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
