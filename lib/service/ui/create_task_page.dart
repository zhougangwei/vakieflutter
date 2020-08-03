import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CreateTaskPage extends StatefulWidget {
  @override
  _CreateTaskPageState createState() => new _CreateTaskPageState();
}

class _CreateTaskPageState extends State<CreateTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CreateButton(),
    );
  }
}

class CreateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(

          textColor: Colors.white ,
          onPressed: () {
            Fluttertoast.showToast(
                msg: "点击MaterialButton", textColor: Colors.white);
          },
          color: Colors.cyan.shade200,
          child: Text('开始生成')),
    );
  }

  createTask() {
    Fluttertoast.showToast(msg: 'start to create!');
  }

}


