import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/utilities/selectuiplatform.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({Key? key}) : super(key: key);
  static const String name = '/second';

  @override
  Widget build(BuildContext context) {
    return SelectPlatformUI(
      platformIOS: SecondScreenIOS(child: scaffoldBody),
      defaultUI: SecondScreenAndroid(body: scaffoldBody),
    );
  }

  final scaffoldBody = Container(
    child: Center(
      child: Text('body'),
    ),
    color: Colors.blueAccent,
  );
}

class SecondScreenAndroid extends StatelessWidget {
  const SecondScreenAndroid({required this.body, Key? key}) : super(key: key);
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second screen'),
      ),
      body: body,
    );
  }
}

class SecondScreenIOS extends StatelessWidget {
  const SecondScreenIOS({required this.child, Key? key}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('second screen'),
      ),
      child: child,
    );
  }
}
