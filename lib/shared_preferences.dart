import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesView extends StatefulWidget {
  const SharedPreferencesView({Key key}) : super(key: key);

  @override
  _SharedPreferencesViewState createState() => _SharedPreferencesViewState();
}

class _SharedPreferencesViewState extends State<SharedPreferencesView> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  TextEditingController controller = TextEditingController(text: 'No Name');
  bool isOn = false;

  void saveData() async {
    SharedPreferences pref = await _prefs;
    pref.setString('name', controller.text);
    pref.setBool('ison', isOn);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('name') ?? "no name";
  }

  Future<bool> getOn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('ison') ?? false;
  }

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: controller,
            ),
            Switch(
              value: isOn,
              onChanged: (newValue) {
                setState(
                  () {
                    isOn = newValue;
                  },
                );
              },
            ),
            RaisedButton(
              onPressed: () {
                saveData();
              },
              child: Text('Save'),
            ),
            RaisedButton(
              onPressed: () {
                getNama().then((value) {
                  controller.text = value;
                  setState(() {});
                });
                getOn().then((value) {
                  isOn = value;
                  setState(() {});
                });
              },
              child: Text('Load'),
            ),
          ],
        ),
      ),
    );
  }
}
