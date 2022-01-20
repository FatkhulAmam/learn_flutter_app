import 'package:flutter/material.dart';
import 'dart:math';

void main(List<String> args) {
  runApp(new StackNalign());
}

class StackNalign extends StatefulWidget {
  const StackNalign({Key key}) : super(key: key);

  @override
  _StackNalign createState() => _StackNalign();
}

class _StackNalign extends State<StackNalign> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Stack & Align'),
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
      body: Stack(
        children: <Widget>[
          // background
          Column(
            children: <Widget>[
              Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          child: Container(
                        color: Colors.white,
                      )),
                      Flexible(child: Container(color: Colors.black12)),
                    ],
                  )),
              Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          child: Container(
                        color: Colors.black12,
                      )),
                      Flexible(child: Container(color: Colors.white)),
                    ],
                  ))
            ],
          ),
          // List View Text
          ListView(
            children: <Widget>[
              Text(
                'Ini Berada Di Lapisan Tengah Dari Stack',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Ini Berada Di Lapisan Tengah Dari Stack',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Ini Berada Di Lapisan Tengah Dari Stack',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Ini Berada Di Lapisan Tengah Dari Stack',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Ini Berada Di Lapisan Tengah Dari Stack',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Ini Berada Di Lapisan Tengah Dari Stack',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Ini Berada Di Lapisan Tengah Dari Stack',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Ini Berada Di Lapisan Tengah Dari Stack',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Ini Berada Di Lapisan Tengah Dari Stack',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Ini Berada Di Lapisan Tengah Dari Stack',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Ini Berada Di Lapisan Tengah Dari Stack',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Ini Berada Di Lapisan Tengah Dari Stack',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Ini Berada Di Lapisan Tengah Dari Stack',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Ini Berada Di Lapisan Tengah Dari Stack',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Ini Berada Di Lapisan Tengah Dari Stack',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Ini Berada Di Lapisan Tengah Dari Stack',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          // Button
          Align(
              alignment: Alignment(0, 0.9),
              child: RaisedButton(
                  child: Text('Button In Front'),
                  color: Colors.amber,
                  onPressed: () {}))
        ],
      ),
    ));
  }
}
