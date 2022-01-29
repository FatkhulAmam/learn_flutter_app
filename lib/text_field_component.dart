import 'package:flutter/material.dart';

class TextFieldComponent extends StatefulWidget {
  const TextFieldComponent({Key key}) : super(key: key);

  @override
  _TextFieldComponent createState() => _TextFieldComponent();
}

class _TextFieldComponent extends State<TextFieldComponent> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field Component'),
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
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.amberAccent,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefix: Container(
                      width: 10,
                      height: 10,
                      color: Colors.blue,
                    ),
                    prefixIcon: Icon(Icons.remove_red_eye),
                    // prefixText: "Password: ",
                    // prefixStyle: TextStyle(
                    //     color: Colors.blueAccent,
                    //     fontWeight: FontWeight.bold),
                    suffix: Container(
                      width: 10,
                      height: 10,
                      color: Colors.red,
                    ),
                    labelText: "enter password",
                    hintText: 'enter password',
                    icon: Icon(Icons.remove_red_eye_outlined)),
                obscureText: true, // make text  be a symbol,
                maxLength: 5,
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller),
            Text(controller.text),
          ],
        ),
      ),
    );
  }
}
