import 'package:flutter/material.dart';
import 'package:first_app/components/colorfull_button.dart';

class RhombusButto extends StatelessWidget {
  const RhombusButto({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rhombus Button'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ColorfullButton(Colors.pink, Colors.blue, Icons.adb),
            ColorfullButton(Colors.green, Colors.yellow, Icons.android),
            ColorfullButton(Colors.red, Colors.brown, Icons.umbrella),
            ColorfullButton(Colors.purple, Colors.black, Icons.phone),
          ],
        ),
      ),
    );
  }
}
