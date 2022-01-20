import 'package:flutter/material.dart';
import 'dart:math';

void main(List<String> args) {
  runApp(new Dragable());
}

class Dragable extends StatefulWidget {
  const Dragable({Key key}) : super(key: key);

  @override
  _Dragable createState() => _Dragable();
}

class _Dragable extends State<Dragable> {
  Color colorOne = Colors.red;
  Color colorTwo = Colors.amber;
  Color colorThree = Colors.greenAccent;
  Color targetColor;
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Dragable'),
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Draggable<Color>(
                  data: colorTwo,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: colorTwo,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black26,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: colorTwo.withOpacity(0.8),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  )),
              Draggable<Color>(
                  data: colorOne,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: colorOne,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black26,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: colorOne.withOpacity(0.8),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  )),
              Draggable<Color>(
                  data: colorThree,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: colorThree,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black26,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: colorThree.withOpacity(0.8),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  )),
            ],
          ),
          DragTarget<Color>(
            onWillAccept: (value) => true,
            onAccept: (value) {
              isAccepted = true;
              targetColor = value;
            },
            builder: (context, candidates, rejected) {
              return (isAccepted)
                  ? SizedBox(
                      width: 100,
                      height: 100,
                      child: Material(
                        color: targetColor,
                        shape: StadiumBorder(),
                        elevation: 3,
                      ),
                    )
                  : SizedBox(
                      width: 100,
                      height: 100,
                      child: Material(
                        color: Colors.grey,
                        shape: StadiumBorder(),
                      ),
                    );
            },
          )
        ],
      ),
    ));
  }
}
