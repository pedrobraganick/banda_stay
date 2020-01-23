import 'package:banda_stay/agenda.dart';
import 'package:flutter/material.dart';

class AgendaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        padding: EdgeInsets.all(8.0),
          itemCount: 1,
          itemBuilder: (context,index) { return _agendaCards();});
  }
}

Card _agendaCards(){
  return Card(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 2.0,
          child: Image.asset('assets/logos/logo.jpg'),
        ),
        Text("Show 1",textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)
      ],
    ),
  );
}