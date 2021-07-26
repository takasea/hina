import 'package:flutter/material.dart';

class MaterialSecondScreen extends StatelessWidget {
  MaterialSecondScreen({Key? key}) : super(key: key);
  static const String name = '/second';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second screen'),
      ),
      body: Container(
        child: Center(
          child: Text('body'),
        ),
        color: Colors.blueAccent,
      ),
    );
  }
}
