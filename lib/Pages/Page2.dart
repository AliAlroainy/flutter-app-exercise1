import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('page2'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('backe'),
          ),
        ));
  }
}
