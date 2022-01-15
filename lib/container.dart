import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Container trial'),
            ),
            body: Container(
                color: Colors.amber,
                margin: EdgeInsets.fromLTRB(10, 20, 30, 40),
                padding: EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.green, Colors.indigo]),
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
                ))
            )
        )
    );
  }
}
