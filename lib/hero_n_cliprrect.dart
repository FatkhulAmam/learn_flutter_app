import 'package:flutter/material.dart';

class HeroClipRRect extends StatelessWidget {
  const HeroClipRRect({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Hero & ClipRRect'),
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
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },
          child: Hero(
            tag: 'aang',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 100,
                width: 100,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://cdn.kibrispdr.org/data/gambar-avatar-aang-0.jpg",
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('Image Profile'),
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
        child: Hero(
          tag: 'aang',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(150),
            child: Container(
              height: 250,
              width: 250,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://cdn.kibrispdr.org/data/gambar-avatar-aang-0.jpg",
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
