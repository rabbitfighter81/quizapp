import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView(
        scrollDirection: Axis.horizontal,
        children: _cards(),
      )),
    );
  }

  List<Widget> _cards() {
    return [1, 2, 3, 4, 5, 6, 7, 8, 9]
        .map((v) => Container(
              color: Colors.lightGreen,
              margin: EdgeInsets.all(20),
              height: 100,
              child: Text('$v'),
            ))
        .toList();
  }
}

class MyFirstWidget extends StatefulWidget {
  MyFirstWidget({Key key}) : super(key: key);

  @override
  _MyFirstWidgetState createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FlatButton(
            color: Colors.grey,
            textColor: Colors.white,
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('$count'),
            ),
          ),
        ),
      ),
    );
  }
}
