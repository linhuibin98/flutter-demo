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
            children: <Widget>[Text('简单计数器')],
          ),
        ),
        body: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _count = 1;

  Widget _allBox() {
    return Container(
      width: 222,
      height: 222,
      decoration: BoxDecoration(
          border: Border.all(
              width: 2,
              color: Colors.deepOrange
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _opButton(),
          _showText()
        ],
      ),
    );
  }

  Widget _opButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            child: Text('+1'),
            textColor: Colors.white,
            color: Colors.deepOrange,
            onPressed: () {
              setState(() {
                _count++;
              });
            }
        ),
        RaisedButton(
            child: Text('-1'),
            textColor: Colors.white,
            color: Colors.amberAccent,
            onPressed: () {
              setState(() {
                _count--;
              });
            }
        ),
      ],
    );
  }

  Widget _showText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text.rich(
            TextSpan(
                text: '当前计数：',
                children: [
                  TextSpan(text: '$_count')
                ]
            )
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: _allBox(),
    );
  }

}