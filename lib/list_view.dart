import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key key}) : super(key: key);

  @override
  _ListView createState() => _ListView();
}

class _ListView extends State<ListViewPage> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('List View'),
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
