import 'package:flutter/material.dart';

class FlexibleLayout extends StatefulWidget {
  const FlexibleLayout({Key key}) : super(key: key);

  @override
  _FlaxibleLayout createState() => _FlaxibleLayout();
}

class _FlaxibleLayout extends State<FlexibleLayout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Flexible Layout'),
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
            body: Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(5),
                            color: Colors.blueGrey,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(5),
                            color: Colors.pink,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(5),
                            color: Colors.purple,
                          )),
                    ],
                  ),
                ),
                Flexible(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.amber,
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.cyan,
                    )),
              ],
            )));
  }
}
