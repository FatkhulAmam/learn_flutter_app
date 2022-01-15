import 'package:flutter/material.dart';
import 'dart:math';

void main(List<String> args) {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('spacer')),
        body: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Spacer(flex: 1),
              Container(width: 100, height: 100, color: Colors.amber,),
              Spacer(flex: 2),
              Container(width: 100, height: 100, color: Colors.amber,),
              Spacer( flex: 3),
              Container(width: 100, height: 100, color: Colors.amber,),
              Spacer( flex: 4),
            ],
          ),
        )
      ),
    );
  }
}
