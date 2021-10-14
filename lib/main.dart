import 'package:flutter/material.dart';
import 'package:mobile_app/navigationn.dart';

void main() {
  runApp(MaterialApp(
    title: "Aplikasi Weekly Planner",
    home: NavigationDrawer(),
  ));
}

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.home),
            onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
          ),
          title: Text("Weekly Planners"),
          actions: <Widget>[],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.greenAccent, Colors.blue])),
          ),
        ),
        endDrawer: DrawerWidget(),
        body: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/bg.png'),
              Image.asset('assets/bgg.jpg'),
              Image.asset('assets/bg3.jpg'),
              Image.asset('assets/bg4.jpg'),
              Image.asset('assets/bg5.jpg'),
            ],
          ),
        ]));
  }
}

class SpamBox extends StatefulWidget {
  SpamBox({required Key key, required this.text, required this.color})
      : super(key: key);

  // final Color colors;
  final String text;
  final Color color;

  @override
  _SpamBoxState createState() => _SpamBoxState();
}

class _SpamBoxState extends State<SpamBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        widget.text,
        style: TextStyle(fontSize: 20.0),
      ),
      color: widget.color,
      width: 200.0,
    );
  }
}
