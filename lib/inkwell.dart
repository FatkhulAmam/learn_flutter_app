import 'package:flutter/material.dart';

class InkwellComponent extends StatelessWidget {
  const InkwellComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Try to make custom Button"),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              color: Colors.amber,
              child: Text("Rised Button"),
              onPressed: () {},
            ),
            Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 3,
              child: Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: [Colors.purple, Colors.pink],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Center(
                      child: Text(
                        'My Buton Use Ink Well',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
