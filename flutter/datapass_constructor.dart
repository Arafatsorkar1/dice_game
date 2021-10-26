import 'package:flutter/material.dart';
import 'package:batch20/employee.dart';

class DataPassConstructor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Employee('Nahid'))

              );
            },
                child: Text('Send'))
          ],
        ),
      ),
    );
  }
}
