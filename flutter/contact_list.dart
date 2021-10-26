import 'package:flutter/material.dart';
class ContactList extends StatelessWidget {
  final List contacts= const[
    {'name' :'Aiub Ali','phone':'01738717829'},
    {'name' :'Nasir','phone':'01838717810'},
    {'name' :'Sabbir','phone':'01938717821'},
    {'name' :'Babul','phone':'01738717831'},
    {'name' :'Rashed','phone':'01622717831'},
    {'name' :'Tuhin','phone':'01733717836'},
    {'name' :'Habib','phone':'01777717842'},
    {'name' :'Kamal','phone':'01751717845'},
    {'name' :'Zaman','phone':'01730717860'},
    {'name' :'Khaled','phone':'01966717890'},
    {'name' :'Jahid','phone':'01850717881'},
    {'name' :'Rezaul','phone':'01844717830'},
    {'name' :'Jamal','phone':'01941717854'},
    {'name' :'Sanaul','phone':'01640717845'},
    {'name' :'Rakib','phone':'01661717830'},
    {'name' :'Tamim','phone':'01961717803'},
    {'name' :'Raju','phone':'01764717880'},
    {'name' :'Shahed','phone':'01781717808'},
    {'name' :'Abid','phone':'01822717824'},
    {'name' :'Dipu','phone':'01701717842'},
    {'name' :'Anas','phone':'01909717830'},
  ];
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PHone COntact'),
      ),
      body:ListView.builder(itemBuilder: (context,index){
        return Column(
          children: [
           ListTile(
             leading: CircleAvatar(
               child: Text(contacts[index]['name'][0]),
             ),
             title: Text(contacts[index]['name']),
             subtitle: Text(contacts[index]['phone']),
           ),
          ],
        );
      })
    );
  }
}
