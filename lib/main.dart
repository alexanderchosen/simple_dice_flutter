import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DicePage());
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber= 1;
  int rightDiceNumber=2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'Dice It',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child:
                 FlatButton(
                   onPressed: (){
                     setState(() {
                       leftDiceNumber = Random().nextInt(6)+1;
                     });
                   },
                     child: Image.asset('images/dice$leftDiceNumber.png'),
                 ),
                ),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      rightDiceNumber = Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
              ],
              ),
        ),
        ),
      );
  }
}
