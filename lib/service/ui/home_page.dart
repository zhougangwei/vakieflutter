import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("CYC"), backgroundColor: Colors.redAccent,),  //头部的标题AppBar
      drawer: new Drawer(),  //侧边栏按钮Drawer
      body: new Center(  //中央内容部分body
        child: new Text('HomePage',style: new TextStyle(fontSize: 35.0),),
      ),
    );
  }
}