import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: '购物车'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  double _price = 12.5;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  double _computerPriceAll() => (_counter * _price);

  @override
  Widget build(BuildContext context) {
    Widget _goodsItem = Container(
      padding: EdgeInsets.all(20.0),
      height: 150.0,
      child: Row(children: <Widget>[
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage('assets/avatar1.jpeg'))),
        ),
        Spacer(),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text('美味的冰淇淋'),
          Row(children: <Widget>[
            Text('价格：$_price'),
          ]),
          Row(children: <Widget>[
            Text('数量：'),
            Text('$_counter'),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: _incrementCounter,
            )
          ])
        ])
      ]),
    );

    Widget _computerPrice = Container(
        child: Flex(direction: Axis.horizontal, children: <Widget>[
      Expanded(child: Container(), flex: 1),
      Row(children: <Widget>[Text('总价：${_computerPriceAll()}')])
    ]));

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[_goodsItem, _computerPrice],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
