import 'package:flutter/material.dart';

class AnonMethode extends StatefulWidget {
  const AnonMethode({Key key}) : super(key: key);

  @override
  _AnonMethode createState() => _AnonMethode();
}

class _AnonMethode extends State<AnonMethode> {
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
              Text(message),
              RaisedButton(
                onPressed: () {
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
