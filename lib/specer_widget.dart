import 'package:flutter/material.dart';
import 'dart:math';

void main(List<String> args) {
  runApp(new SpacerWidget());
}

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('spacer'),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Center(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Spacer(flex: 1),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                ),
                Spacer(flex: 2),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                ),
                Spacer(flex: 3),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                ),
                Spacer(flex: 4),
              ],
            ),
          )),
    );
  }
}
