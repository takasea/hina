import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Colors;

class CupertinoSecondScreen extends StatelessWidget {
  CupertinoSecondScreen({Key? key}) : super(key: key);
  static const String name = '/second';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('second screen'),
      ),
      child: Container(
        child: Center(
          child: Text('body'),
        ),
        color: Colors.blueAccent,
      ),
    );
  }
}
