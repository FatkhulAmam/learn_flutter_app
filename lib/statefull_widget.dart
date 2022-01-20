import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new LearnStateFull());
}

class LearnStateFull extends StatefulWidget {
  const LearnStateFull({Key key}) : super(key: key);

  @override
  _LearnStateFullWidget createState() => _LearnStateFullWidget();
}

class _LearnStateFullWidget extends State<LearnStateFull> {
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
        appBar: AppBar(
          title: Text('Statefull widget'),
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
