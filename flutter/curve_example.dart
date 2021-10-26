
import 'package:batch20/frist_screen.dart';
import 'package:batch20/second_screen.dart';
import 'package:batch20/third_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedExample extends StatefulWidget {
  const CurvedExample({Key? key}) : super(key: key);

  @override
  _CurvedExampleState createState() => _CurvedExampleState();
}

class _CurvedExampleState extends State<CurvedExample> {
  var _page=0;
  final pages=[FirstSrceen(),SecondScreen(),ThirdScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curved Example'),
      ),
bottomNavigationBar: CurvedNavigationBar(
index: 0,

  color: Colors.white,
  buttonBackgroundColor: Colors.white,
  backgroundColor: Colors.purple,
  animationCurve: Curves.easeIn,
  animationDuration: Duration(milliseconds: 500),

  onTap: (index){
  setState(() {
    _page=index;
  });
  },

  items: [
    Icon(Icons.contacts),
    Icon(Icons.camera),
    Icon(Icons.message),

  ],
),
      body: pages[_page],
    );
  }
}
