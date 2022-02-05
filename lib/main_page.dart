import 'package:first_app/animated_container.dart';
import 'package:first_app/annonymous_method.dart';
import 'package:first_app/api_demo.dart';
import 'package:first_app/audio_player.dart';
import 'package:first_app/card_component.dart';
import 'package:first_app/clip_path.dart';
import 'package:first_app/container.dart';
import 'package:first_app/dragable.dart';
import 'package:first_app/flexible_layout.dart';
import 'package:first_app/gradient_opacity.dart';
import 'package:first_app/hero_n_cliprrect.dart';
import 'package:first_app/image_widget.dart';
import 'package:first_app/inkwell.dart';
import 'package:first_app/list_view.dart';
import 'package:first_app/media_query.dart';
import 'package:first_app/qr_code.dart';
import 'package:first_app/rhombus_button.dart';
import 'package:first_app/specer_widget.dart';
import 'package:first_app/stack_n_align.dart';
import 'package:first_app/statefull_widget.dart';
import 'package:first_app/switch_n_animatedswitcher.dart';
import 'package:first_app/tab_bar.dart';
import 'package:first_app/text.dart';
import 'package:first_app/text_field_component.dart';
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
                child: Text('Card Component',
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
                      builder: (context) => CardComponent(),
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
                child: Text('Text Field Component',
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
                      builder: (context) => TextFieldComponent(),
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
                child: Text(
                  'Media Query Component',
                  style: TextStyle(color: Colors.black),
                ),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MediaQueryComponent(),
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
                child: Text(
                  'Make Button use Inkwell',
                  style: TextStyle(color: Colors.black),
                ),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InkwellComponent(),
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
                child: Text(
                  'Hero n ClipRRect',
                  style: TextStyle(color: Colors.black),
                ),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HeroClipRRect(),
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
                child: Text(
                  'Tab Bar',
                  style: TextStyle(color: Colors.black),
                ),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TabbarComponent(),
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
                child: Text(
                  'QR Code',
                  style: TextStyle(color: Colors.black),
                ),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QrCodeView(),
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
                child: Text(
                  'Rhombus Button',
                  style: TextStyle(color: Colors.black),
                ),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RhombusButto(),
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
                child: Text(
                  'Gradient Opacity',
                  style: TextStyle(color: Colors.black),
                ),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GradientOpacity(),
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
                child: Text(
                  'Audio Player',
                  style: TextStyle(color: Colors.black),
                ),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AudioPlayerView(),
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
                child: Text(
                  'Clip Path',
                  style: TextStyle(color: Colors.black),
                ),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ClipPathCustom(),
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
                child: Text(
                  'Api Demo',
                  style: TextStyle(color: Colors.black),
                ),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ApiDemo(),
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
                child: Text(
                  'Switch & AnimatedSwitcher',
                  style: TextStyle(color: Colors.black),
                ),
                borderSide: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SwitchNanimatedSwitcher(),
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
