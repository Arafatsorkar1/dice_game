

import 'package:batch20/student.dart';
import 'package:flutter/material.dart';

class College extends StatelessWidget {
  const College({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('College'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Student('Amra valo manus '))
              );
            },

                child: Text('Send',style: TextStyle(fontSize: 32),))
          ],
        ),
      )
    );
  }
}
