import 'package:flutter/material.dart';
import './komputer.dart' as komputer;
import './radio.dart' as radio;
import './headset.dart' as headshet;
import './hp.dart' as hp;

//tes
void main(){
  runApp(new MaterialApp(
    title:"Tab Bar",
    home :new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey,
        title: new Text("Daftar Elektronik"),
        bottom: new TabBar(
           controller:controller,
           tabs: <Widget>[
             new Tab(icon: new Icon(Icons.computer), text: "Komputer",),
             new Tab(icon: new Icon(Icons.headset), text: "Headshet",),
             new Tab(icon: new Icon(Icons.radio), text:"Radio"),
             new Tab(icon: new Icon(Icons.smartphone), text: "HP",),
           ],
             
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new komputer.Komputer(),
          new headshet.Headshet(),
          new radio.Radio(),
          new hp.Hp()
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.blueGrey,
        child: new TabBar(
          controller:controller,
           tabs: <Widget>[
             new Tab(icon: new Icon(Icons.computer), text: "Komputer",),
             new Tab(icon: new Icon(Icons.headset), text: "Headshet",),
             new Tab(icon: new Icon(Icons.radio), text:"Radio"),
             new Tab(icon: new Icon(Icons.smartphone), text: "HP",),
           ],
             
        ),
        ),
      
    );
  }
}