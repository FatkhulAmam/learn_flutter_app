import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 10;
  void increaseNumber() {
    setState(() {
      number = number + 1;
    });
  }

  void decreaseNumber() {
    if (number > 10) {
      setState(() {
        number = number - 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Statefull widget'),),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              number.toString(),
              style: TextStyle(fontSize: number.toDouble()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Tambah'),
                  onPressed: increaseNumber,
                ),
                RaisedButton(
                  child: Text('Kurang'),
                  onPressed: decreaseNumber,
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
