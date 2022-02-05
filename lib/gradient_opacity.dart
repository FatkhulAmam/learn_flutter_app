import 'package:flutter/material.dart';

class GradientOpacity extends StatelessWidget {
  const GradientOpacity({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gradient Opacity'),
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
        child: ShaderMask(
          shaderCallback: (rectangle) {
            return LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ).createShader(
              Rect.fromLTRB(0, 0, rectangle.width, rectangle.height),
            );
          },
          blendMode: BlendMode.dstIn,
          child: Image(
            image: NetworkImage(
              'https://englishforsma.com/wp-content/uploads/2016/08/fischer-2739115_640.jpg',
            ),
          ),
        ),
      ),
    );
  }
}
