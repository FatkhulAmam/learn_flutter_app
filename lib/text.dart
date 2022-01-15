import 'package:flutter/material.dart';

class LearnText extends StatefulWidget {
  const LearnText({Key key}) : super(key: key);

  @override
  _LearnTextState createState() => _LearnTextState();
}

class _LearnTextState extends State<LearnText> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Text'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text(
          'This Is a Text gg',
          style: TextStyle(
              fontFamily: 'AsapCondensed',
              fontSize: 25,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.overline,
              decorationColor: Colors.blueAccent,
              decorationStyle: TextDecorationStyle.wavy,
              decorationThickness: 2),
        ),
      ),
    ));
  }
}
