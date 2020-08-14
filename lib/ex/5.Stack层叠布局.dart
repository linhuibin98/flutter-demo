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
    return Stack(
      children: <Widget>[
        Container(
          width: 200,
          height: 200,
          color: Colors.lightBlueAccent,
        ),

        Positioned(
          left: 0,
          top: 0,
          child: Icon(Icons.account_balance),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Icon(Icons.account_balance),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.3)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('布局', style: TextStyle(
                    color: Colors.white
                ),)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
