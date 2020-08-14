import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text('Title')],
          ),
        ),
        body: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          width: 80,
          height: 80,
          color: Colors.lightBlueAccent,
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.redAccent,
        ),
        Container(
          width: 100,
          height: 60,
          color: Colors.amberAccent,
        ),
        Container(
          width: 110,
          height: 110,
          color: Colors.indigo,
        )
      ],
    );
  }
}
