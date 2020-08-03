import 'package:flutter/material.dart';
import 'package:miniflutter/service/res/AppColor.dart';
import 'package:miniflutter/service/ui/drawer.dart';
import 'package:miniflutter/service/ui/create_task_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Focus',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(title: 'Focus'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
        centerTitle: false,
      ),
      drawer: new Drawer(
        child: DrawerLayout(),
      ), //侧边栏按钮Drawer
      body: Container(
        width: double.infinity,
        color: Colors.cyan,
        child: Column(
          children: <Widget>[
           new CreateTaskPage(),
          ],
        ),
      ),
    );
  }
}
