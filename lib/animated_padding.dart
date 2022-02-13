import 'package:flutter/material.dart';

class AnimatedWidgetView extends StatefulWidget {
  const AnimatedWidgetView({Key key}) : super(key: key);

  @override
  _AnimatedWidgetViewState createState() => _AnimatedWidgetViewState();
}

class _AnimatedWidgetViewState extends State<AnimatedWidgetView> {
  double myPadding = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Padding'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
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
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: GestureDetector(
                      onTap: () {
                        myPadding = 50;
                        setState(() {});
                      },
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: GestureDetector(
                      onTap: () {
                        myPadding = 10;
                        setState(() {});
                      },
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: GestureDetector(
                      onTap: () {
                        myPadding = 5;
                        setState(() {});
                      },
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: GestureDetector(
                      onTap: () {
                        myPadding = 75;
                        setState(() {});
                      },
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
