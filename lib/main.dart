import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),

));
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _bottomTabIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text('Title')],
          ),
        ),
        body: Text('Hello World'),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value == _bottomTabIndex) return;
            setState(() {
              _bottomTabIndex = value;
            });

          },
          currentIndex: _bottomTabIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('首页')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border),
                title: Text('收藏')
            ),
          ]
        )
    );
  }
}