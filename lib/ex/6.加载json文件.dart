import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

main() async {

  runApp(MaterialApp(
    home: MyApp(),
  ));

  rootBundle.loadString('assets/test.json')
      .then((value) {
    var result = json.decode(value);
    print(result);
  })
      .catchError((err) => print(err));
}

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
    return Text('Hello World');
  }
}
