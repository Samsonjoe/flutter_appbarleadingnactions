import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

  String mtext = ' ';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Appbar Widget'),
        leading: new Icon(Icons.menu),
        actions: [
          new IconButton(icon: new Icon(Icons.arrow_forward), onPressed: (){setState(() {
            mtext = 'THis is arrow icon button';
          });}),
          new IconButton(icon: new Icon(Icons.close), onPressed: (){setState(() {
            mtext = 'THis is close icon button';
          });}),
        ],
      ),
      body: new Center(
        child: new Text(mtext),
      ),
    );
  }
}


