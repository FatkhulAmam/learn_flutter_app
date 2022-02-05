import 'package:first_app/models/get_user_model.dart';
import 'package:first_app/models/post_result_model.dart';
import 'package:flutter/material.dart';

class ApiDemo extends StatefulWidget {
  const ApiDemo({Key key}) : super(key: key);

  @override
  _ApiDemoState createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  PostResult postResult = null;
  User user = null;
  String output = 'no Data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rhombus Button'),
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
            Text(output),
            RaisedButton(
              child: Text('GET'),
              onPressed: () {
                User.getUsers('3').then(
                  (users) {
                    output = '';
                    for (var i = 0; i < users.length; i++)
                      output = output + "[ " + users[i].name + " ]";
                    setState(() {});
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
