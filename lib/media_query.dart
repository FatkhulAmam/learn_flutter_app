import 'package:flutter/material.dart';

class MediaQueryComponent extends StatelessWidget {
  const MediaQueryComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query Componet'),
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
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: generateContainers,
            )
          : Row(
              children: generateContainers,
            ),
    );
  }

  List<Widget> get generateContainers {
    return <Widget>[
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.yellow,
        width: 100,
        height: 100,
      )
    ];
  }
}
