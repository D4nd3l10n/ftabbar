import 'package:flutter/material.dart';

class Hp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Container(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("SmartPhone", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Image(image: new NetworkImage("https://cdns.klimg.com/merdeka.com/i/w/news/2019/12/02/1130346/paging/540x270/huawei-mate-30-pro.jpg"), width: 200.0,)

          ],
        ),
      ),
    );
  }
}