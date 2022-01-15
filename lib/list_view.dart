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
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('List View'),
            ),
            body: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                        child: Text('Tambah Data'),
                        onPressed: () {
                          setState(() {
                            widgets.add(Text(
                              'Data Ke - $counter',
                              style: TextStyle(fontSize: 25),
                            ));
                            counter++;
                          });
                        }),
                    RaisedButton(
                        child: Text('Kurangi Data'),
                        onPressed: () {
                          setState(() {
                            widgets.removeLast();
                            counter--;
                          });
                        })
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widgets,
                )
              ],
            )));
  }
}
