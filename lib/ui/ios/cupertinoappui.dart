import 'package:flutter/cupertino.dart';
import '/screen/secondscreen.dart';
import '/screen/somescreen.dart';

class CupertinoAppUI extends StatelessWidget {
  const CupertinoAppUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      routes: {
        SomeScreen.name: (context) => SomeScreen(title: 'some screen'),
        SecondScreen.name: (context) => SecondScreen(),
      },
    );
  }
}
