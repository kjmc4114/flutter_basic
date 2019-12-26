import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // 화면이 변경될 소지가 없음.
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 안드로이드의 머터리얼 앱
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HelloPage());
  }
}

class HelloPage extends StatefulWidget {
  // 변경사항이 따로없다.
  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String _message = '안녕세상아2';
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: _changeMessage),
        appBar: AppBar(
          title: Text('밤편지'),
        ),
        body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // 정렬방향을 아래로 및 센터
                children: <Widget>[
                  Text(_message, style: TextStyle(fontSize: 30)),
                  Text('$_counter', style: TextStyle(fontSize: 30)), // _counter.toString = '$_count'
                ],
              )
        ) // widget = HelloPage를 말함
        );
  }

  void _changeMessage() {
    setState(() {
      _message = '헬로월드';
      _counter++;
    });
  }
}
