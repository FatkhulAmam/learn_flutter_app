import 'package:first_app/main_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 100),
              child: const Text(
                'Learn Flutter Compenent App',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
            ),
            Center(
              heightFactor: 10,
              child: const Text(
                'This Is My Learn Application using Dart and fluter frame work, the purpose of this app is to learn how to make flutter component',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text('See App'),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MainPage();
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
