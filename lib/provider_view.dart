import 'package:first_app/provider/application_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderView extends StatelessWidget {
  const ProviderView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ApplicationColor>(
      create: (context) => new ApplicationColor(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Consumer<ApplicationColor>(
            builder: (context, appColor, _) => Text(
              'Provider State Management',
              style: TextStyle(color: appColor.color),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Consumer<ApplicationColor>(
              builder: (context, appColor, _) => Icon(
                Icons.arrow_back,
                color: appColor.color,
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Consumer<ApplicationColor>(
                builder: (context, appColor, _) => AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  width: 150,
                  height: 150,
                  color: appColor.color,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text("AB"),
                  ),
                  Consumer<ApplicationColor>(
                    builder: (context, appColor, _) => Switch(
                      value: appColor.isLightBlue,
                      onChanged: (newValue) {
                        appColor.isLightBlue = newValue;
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text("LB"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
