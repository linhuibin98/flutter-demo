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

class MyHomePage extends StatefulWidget {

  @override
  State createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  double skewNum = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            color: Colors.yellow,
            child: Column(
              children: <Widget>[
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('当前skew值为：${skewNum.toString().substring(0, 3)}')
                  ],
                ),
                Slider(
                  value: this.skewNum,
                  max: 1,
                  min: 0,
                  activeColor: Colors.blue,
                  onChanged: (double val) {
                    this.setState(() {
                      this.skewNum = val;
                    });
                  },
                ),
                SizedBox(height: 80),
                Container(
                  color: Colors.black,
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    child: Transform(
                      alignment: Alignment.topRight,
                      transform: Matrix4.skewY(skewNum),
                      child: Container(
                        width: 200,
                        height: 60,
                        color: Colors.lightBlue,
                        child: Center(child: Text('sdfsafsd'),),
                      ),
                    ),
                  ),
                )
              ],
            )
        )
    );
  }
}
