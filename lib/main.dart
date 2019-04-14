import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Tabs'),
            leading: Icon(Icons.menu),
            backgroundColor: Colors.teal[700],
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () => {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () => {},
              ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.yellow,
              tabs: <Widget>[
                Tab(
                  text: 'Chats',
                  icon: Icon(Icons.chat),
                ),
                Tab(
                  text: 'Groups',
                  icon: Icon(Icons.group),
                ),
                Tab(
                  text: 'Settings',
                  icon: Icon(Icons.settings),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text('Chat Tab'),
              ),
              Center(
                child: Text('Group Tab'),
              ),
              Center(
                child: Text('Settings Tab'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
