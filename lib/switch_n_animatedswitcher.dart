import 'package:flutter/material.dart';

class SwitchNanimatedSwitcher extends StatefulWidget {
  const SwitchNanimatedSwitcher({Key key}) : super(key: key);

  @override
  _SwitchNanimatedSwitcherState createState() =>
      _SwitchNanimatedSwitcherState();
}

class _SwitchNanimatedSwitcherState extends State<SwitchNanimatedSwitcher> {
  bool isOn = false;
  Widget myWidget = Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(
        color: Colors.red, border: Border.all(color: Colors.black, width: 3)),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch & Animated Switcher'),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            AnimatedSwitcher(
              child: myWidget,
              duration: Duration(seconds: 1),
              transitionBuilder: (child, animation)=>ScaleTransition(scale: animation, child: child,),
            ),
            Switch(
              activeColor: Colors.green,
              inactiveTrackColor: Colors.red[200],
              inactiveThumbColor: Colors.red,
              value: isOn,
              onChanged: (newValue) {
                isOn = newValue;
                setState(() {
                  if (isOn) {
                    myWidget = SizedBox(
                      width: 200,
                      height: 200,
                      child: Text(
                        'Switch: ON',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    );
                  } else {
                    myWidget = Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.black, width: 3)),
                    );
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
