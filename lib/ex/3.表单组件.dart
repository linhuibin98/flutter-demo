import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      home: MyApp(),
    )
);

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('表单组件')
              ],
            )
        ),
        body: LoginPage()
    );
  }
}

class LoginPage extends StatefulWidget {

  @override
  _LoginPage createState() => _LoginPage();
}



class _LoginPage extends State<LoginPage> {

  final Map<String, String> _data = {
    "username": "",
    "password": ""
  };

  void _handleLogin() {
    if (_data["username"] == "") {
      _alertDialog('请输入用户名');
      return;
    }

    if (_data["password"] == "") {
      _alertDialog('请输入密码');
      return;
    }

  }

  void _alertDialog(String tipText) async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示信息'),
            content: Text(tipText),
            actions: <Widget>[
              FlatButton(
                child: Text("确定"),
                onPressed: () {
                  print("确定");
                  Navigator.of(context).pop("Ok");
                },
              )
            ],
          );
        }
    );

    print(result);
  }

  Widget _pageTitle() {
    return Container(
      width: 375,
      height: 150,
      color: Colors.redAccent,
      child: Center(
        child: Text('账号密码登录',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18
          ),
        ),
      ),
    );
  }

  Widget _formField() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(
              decoration: InputDecoration(
                  labelText: "用户名：",
                  hintText: '请输入用户名'
              ),
              onChanged: (value) {
                setState(() {
                  _data['username'] = value;
                });
              }
          ),
          TextField(
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                labelText: "密码：",
                hintText: '请输入密码'
            ),
            onChanged: (value) {
              setState(() {
                _data['password'] = value;
              });
            },
            onSubmitted: (value) => _handleLogin(),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            width: 281,
            height: 40,
            child: RaisedButton(
              child: Text('登录'),
              textColor: Colors.white,
              color: Colors.lightBlueAccent,
              onPressed: _handleLogin,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        _pageTitle(),
        _formField()
      ],
    );
  }
}