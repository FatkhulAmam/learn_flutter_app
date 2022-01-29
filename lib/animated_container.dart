import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({Key key}) : super(key: key);

  @override
  _AnimatedContainerWidget createState() => _AnimatedContainerWidget();
}

class _AnimatedContainerWidget extends State<AnimatedContainerWidget> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Animated Container'),
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
                child: GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: AnimatedContainer(
                color: Color.fromARGB(255, random.nextInt(256),
                    random.nextInt(256), random.nextInt(256)),
                duration: Duration(seconds: 1),
                width: 50.0 + random.nextInt(101),
                height: 50.0 + random.nextInt(101),
              ),
            ))));
  }
}
