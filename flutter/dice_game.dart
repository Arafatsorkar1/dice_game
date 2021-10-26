import 'dart:math';

import 'package:flutter/material.dart';
class DiceGame extends StatefulWidget {
  const DiceGame({Key? key}) : super(key: key);

  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  Random random=Random.secure();
  final diceList=[
    'images/d1.png',
    'images/d2.png',
    'images/d3.png',
    'images/d4.png',
    'images/d5.png',
    'images/d6.png',

  ];
  int index=0;
  int score=0;
  void diceGame(){
    setState(() {
      index=random.nextInt(6);
      score+=index+1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Game'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Total Score :$score',style: TextStyle(fontSize: 50),),
            Image.asset(diceList[index],height: 150,width: 150,fit: BoxFit.cover,),
            RaisedButton(
                child: Text('Click Me',style: TextStyle(fontSize: 40),),
                onPressed: diceGame,

            ),
          ],
        ),
      ),
    );
  }
}
