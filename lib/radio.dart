import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Container(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("Radio", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Image(image: new NetworkImage("https://ecs7.tokopedia.net/img/cache/700/product-1/2017/5/26/7644457/7644457_82cd3e6d-888f-4c3b-b777-75dd7b68ecd8_1080_1080.jpg"), width: 200.0,)

          ],
        ),
      ),
    );
  }
}