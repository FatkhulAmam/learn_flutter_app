import 'package:flutter/material.dart';

class TabbarComponent extends StatelessWidget {
  TabbarComponent({Key key}) : super(key: key);

  TabBar MyTabBar = TabBar(
    indicator: BoxDecoration(color: Colors.red, border: Border(top: BorderSide(color: Colors.green, width: 5))),
    tabs: <Widget>[
      Tab(
        icon: Icon(Icons.comment),
        text: 'Chat',
      ),
      Tab(
        icon: Icon(Icons.bug_report),
        text: 'Status',
      ),
      Tab(
        icon: Icon(Icons.settings),
        text: 'Settings',
      ),
      Tab(
        icon: Icon(Icons.person),
        text: 'Profile',
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar Component'),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(MyTabBar.preferredSize.height),
            child: Container(color: Colors.amber, child: MyTabBar),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text('Chat Tab'),
            ),
            Center(
              child: Text('Status Tab'),
            ),
            Center(
              child: Text('Setting Tab'),
            ),
            Center(
              child: Text('Profile Tab'),
            )
          ],
        ),
      ),
    );
  }
}
