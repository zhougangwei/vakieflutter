import 'package:flutter/material.dart';
import 'package:miniflutter/service/res/AppColor.dart';
import 'package:miniflutter/service/ui/slidebar_page.dart';

class DrawerLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DrawerLayoutState();
  }
}
class DrawerLayoutState extends State<DrawerLayout> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: AppColor.appColor.shade100,
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            //Material内置控件
            accountName: new Text('Vakie',style: TextStyle(
                fontSize: 32
            )),
            //用户名
            accountEmail: new Text('make more fun',style: TextStyle(
                fontSize:16
            )),
            //用户邮箱
            currentAccountPicture: new GestureDetector(
              //用户头像
              onTap: () => print('current user'),
              child: new CircleAvatar(
                //圆形图标控件
                backgroundImage: new NetworkImage(
                    'https://upload.jianshu.io/users/upload_avatars/7700793/dbcf94ba-9e63-4fcf-aa77-361644dd5a87?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240'), //图片调取自网络
              ),
            ),
          ),
          new ListTile(
              //第一个功能项
              title: new Text('Feedback',ted),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new SidebarPage()));
              }),
          new ListTile(
              //第二个功能项
              title: new Text('Second Page'),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new SidebarPage()));
              }),
          new ListTile(
              //第二个功能项
              title: new Text('Second Page'),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/a');
              }),
          new Divider(), //分割线控件
          new ListTile(
            //退出按钮
            title: new Text('Close'),
            trailing: new Icon(Icons.cancel),
            onTap: () => Navigator.of(context).pop(), //点击后收起侧边栏
          ),
        ],
      ),
    );
  }
}
