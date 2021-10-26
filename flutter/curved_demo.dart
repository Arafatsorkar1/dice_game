import 'package:flutter/material.dart';
import 'package:batch20/second_screen.dart';
import 'package:batch20/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'frist_screen.dart';
class CurvedDemo extends StatefulWidget {
  const CurvedDemo({Key? key}) : super(key: key);
  @override
  _CurvedDemoState createState() => _CurvedDemoState();
}
class _CurvedDemoState extends State<CurvedDemo> {
  var _page=0;
  final pages= [FirstSrceen(),SecondScreen(),ThirdScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index:  0,
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.orange,
        animationCurve: Curves.decelerate,
        animationDuration: Duration(milliseconds: 500),
        onTap: (index){
          setState(() {
            _page=index;
          });
        },
        items: [
          Icon(Icons.camera),
          Icon(Icons.message),
          Icon(Icons.add_comment),
          Icon(Icons.contacts),
        ],
      ),
      body: pages[_page],
    );
  }
}


