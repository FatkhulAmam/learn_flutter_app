import 'package:flutter/material.dart';

class ClipPathCustom extends StatelessWidget {
  const ClipPathCustom({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text & Typography'),
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
      body: ClipPath(
        clipper: MyClipper(),
        child: Center(
          child: Image(
            image: NetworkImage('https://englishforsma.com/wp-content/uploads/2016/08/fischer-2739115_640.jpg'),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();

    print('height ${path}');

    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 2, size.height * 0.75, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    print('height ${path}');

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

}