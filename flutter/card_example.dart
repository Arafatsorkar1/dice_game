import 'package:flutter/material.dart';
class CardExample extends StatelessWidget {
  const CardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300.0,
          height: 200.0,
          padding: EdgeInsets.all(10.0),
          child: Card(

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.red,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Icon(Icons.album,size: 30.0,),
                  title: Text('Hello ',style: TextStyle(fontSize: 30.0),),
                  subtitle: Text('Welcome to join our team'),
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}
