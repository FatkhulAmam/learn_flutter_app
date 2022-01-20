import 'package:first_app/animated_container.dart';
import 'package:first_app/annonymous_method.dart';
import 'package:first_app/container.dart';
import 'package:first_app/dragable.dart';
import 'package:first_app/flexible_layout.dart';
import 'package:first_app/image_widget.dart';
import 'package:first_app/list_view.dart';
import 'package:first_app/specer_widget.dart';
import 'package:first_app/stack_n_align.dart';
import 'package:first_app/statefull_widget.dart';
import 'package:first_app/text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main page'),
      ),
      body: Container(
    padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 50.0,
              child: OutlineButton(
                child: Text('Text', style: TextStyle(color: Colors.black)),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LearnText(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 50.0,
              child: OutlineButton(
                child: Text('Statefull Widget',
                    style: TextStyle(color: Colors.black)),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LearnStateFull(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 50.0,
              child: OutlineButton(
                child: Text('Stack & Align',
                    style: TextStyle(color: Colors.black)),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StackNalign(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 50.0,
              child: OutlineButton(
                child: Text('Spacer Widget',
                    style: TextStyle(color: Colors.black)),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SpacerWidget(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 50.0,
              child: OutlineButton(
                child: Text('List View Page',
                    style: TextStyle(color: Colors.black)),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListViewPage(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 50.0,
              child: OutlineButton(
                child:
                    Text('Image Widget', style: TextStyle(color: Colors.black)),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ImageWidget(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 50.0,
              child: OutlineButton(
                child: Text('Flexible Layout',
                    style: TextStyle(color: Colors.black)),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FlexibleLayout(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 50.0,
              child: OutlineButton(
                child: Text('Dragable', style: TextStyle(color: Colors.black)),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dragable(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 50.0,
              child: OutlineButton(
                child: Text('Container Widget',
                    style: TextStyle(color: Colors.black)),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContainerWidget(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 50.0,
              child: OutlineButton(
                child: Text('Animated Container',
                    style: TextStyle(color: Colors.black)),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnimatedContainerWidget(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 50.0,
              child: OutlineButton(
                child: Text('Anonymous Methode',
                    style: TextStyle(color: Colors.black)),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnonMethode(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 50.0,
              child: OutlineButton(
                child: Text('Anonymous Methode',
                    style: TextStyle(color: Colors.black)),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnonMethode(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 50.0,
              child: OutlineButton(
                child: Text('Anonymous Methode',
                    style: TextStyle(color: Colors.black)),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnonMethode(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 50.0,
              child: OutlineButton(
                child: Text('Anonymous Methode',
                    style: TextStyle(color: Colors.black)),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnonMethode(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
