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
  String message = ' Ini Adalah Text';
  void pressedButton() {
    setState(() {
      message = "Tombol Sudah Ditekan!!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Anonymous Methode'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message), 
              RaisedButton(
                onPressed: (){
                  setState(() {
                    message = 'Ini Dari Anonymous func';
                  });
                },
                child: Text('Tekan Aku'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
