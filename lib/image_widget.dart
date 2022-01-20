import 'package:flutter/material.dart';
import 'dart:math';

void main(List<String> args) {
  runApp(new ImageWidget());
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Widget'),
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
              Container(
                width: 100,
                height: 100,
                child: Image(
                  image: AssetImage('images/logoN.png'),
                ),
              ),
              Container(
                color: Colors.amber,
                width: 250,
                height: 200,
                padding: EdgeInsets.all(3),
                child: Image(
                  image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/b/bc/Emha_Ainun_Nadjib.jpg"),
                  fit: BoxFit.contain,
                  repeat: ImageRepeat.repeat,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
