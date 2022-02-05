import 'dart:ui';

import 'package:flutter/material.dart';

/**
 * for typography document see https://docs.microsoft.com/en-us/typography/opentype/spec/featurelist
 */

class LearnText extends StatefulWidget {
  const LearnText({Key key}) : super(key: key);

  @override
  _LearnTextState createState() => _LearnTextState();
}

class _LearnTextState extends State<LearnText> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Text & Typography'),
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
          children: <Widget>[
            Text(
              'This Is a Text gg',
              style: TextStyle(
                  fontFamily: 'AsapCondensed',
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.overline,
                  decorationColor: Colors.blueAccent,
                  decorationStyle: TextDecorationStyle.wavy,
                  decorationThickness: 2),
            ),
            Text(
              'Contoh 01 (Tanpa Apapun)',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Contoh 02 (Small Caps)',
              style: TextStyle(
                fontSize: 20,
                fontFeatures: [
                  FontFeature.enable('smcp'),
                ],
              ),
            ),
            Text(
              'Contoh 1/2 (Small Caps & frac)',
              style: TextStyle(
                fontSize: 20,
                fontFeatures: [
                  FontFeature.enable('smcp'),
                  FontFeature.enable('frac')
                ],
              ),
            ),
            Text(
              'Contoh Cardo 19 (Tanpa apapun)',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Cardo',
              ),
            ),
            Text(
              'Contoh Cardo 19 (old style)',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Cardo',
                fontFeatures: [
                  FontFeature.oldstyleFigures()
                ]
              ),
            ),
            Text(
              'Contoh Cardo 19 (stylisticSet)',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Cardo',
                fontFeatures: [
                  FontFeature.stylisticSet(5)
                ]
              ),
            )
          ],
        ),
      ),
    ));
  }
}
