import 'package:flutter/material.dart';
import 'Page2.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: RaisedButton(
                padding: const EdgeInsets.all(0.0),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Page2();
                  }));
                },
                child: Text('page2'),
              ),
            )),
            Expanded(child: Text('Hello Ali AL-Roainy'))
          ],
        ),
      ),
    );
  }
}
