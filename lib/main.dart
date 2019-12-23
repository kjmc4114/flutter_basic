import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget { // 화면이 변경될 소지가 없음.
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 안드로이드의 머터리얼 앱
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title:  Text('밤편지'),
          ),
          body: Text('헬로월드2', style: TextStyle(fontSize: 30))
      )
    );
  }
}

class HelloPage extends StatefulWidget { // 변경사항이 따로없다.
  final String title;
  HelloPage(this.title);
  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text('밤편지'),
        ),
        body: Text('HelloWorld2', style: TextStyle(fontSize: 30))
    );
  }
}
