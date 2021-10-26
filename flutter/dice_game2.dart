import 'dart:math';

import 'package:flutter/material.dart';
class DiceGame2 extends StatefulWidget {
  const DiceGame2({Key? key}) : super(key: key);

  @override
  _DiceGame2State createState() => _DiceGame2State();
}

class _DiceGame2State extends State<DiceGame2> {
  Random random=Random.secure();
  int index=0;
  int score=0;
 final diceList=[
   'images/d1.png',
   'images/d2.png',
   'images/d3.png',
   'images/d4.png',
   'images/d5.png',
   'images/d6.png',
 ];

  void diceGame(){
   setState(() {
     index= random.nextInt(6);
     score+=index+1;
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Game 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Total Score : $score',style: TextStyle(fontSize: 50),),
            Image.asset(diceList[index],height: 150, width: 150,fit: BoxFit.cover,),
          SizedBox(height: 50,),
            RaisedButton(
              child: Text('Click Me',style: TextStyle(fontSize: 40),),
                onPressed: diceGame

            ),
          ],
        ),
      ),
    );
  }
}
