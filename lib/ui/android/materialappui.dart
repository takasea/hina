import 'package:flutter/material.dart';
import '/screen/somescreen.dart';
import '/screen/secondscreen.dart';

class MaterialAppUI extends StatelessWidget {
  const MaterialAppUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SomeScreen.name: (context) => SomeScreen(title: 'some screen'),
        SecondScreen.name: (context) => SecondScreen(),
      },
    );
  }
}
