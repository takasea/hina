import 'package:flutter/material.dart';
import 'package:hina/main.dart' show AppState;
import 'package:hina/screen/secondscreen.dart';
import 'package:hina/utilities/selectuiplatform.dart';
import 'somescreen/somescreen_android.dart';
import 'somescreen/somescreen_ios.dart';
import 'somescreen/section/somewidget.dart';

class SomeScreen extends StatelessWidget {
  SomeScreen({Key? key, required this.title}) : super(key: key);
  static const String name = '/';
  final String title;

  late final Widget scaffoldBody;
  @override
  Widget build(BuildContext context) {
    scaffoldBody = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            child: Text(
              'You have pushed the button this many times:',
            ),
            onTap: () {
              Navigator.pushNamed(context, SecondScreen.name);
            },
          ),
          SomeWidget(),
          ValueListenableBuilder<int>(
            // valueListenable:
            //     GlobalObjectKey<AppState>('state').currentState!.counter,
            valueListenable: AppState.draw.counter,
            builder: (context, int counter, child) {
              return Text(
                '$counter',
                style: Theme.of(context).textTheme.headline4,
              );
            },
          ),
        ],
      ),
    );

    return SelectPlatformUI(
      platformIOS: SomeScreenIOS(title: title, child: scaffoldBody),
      defaultUI: SomeScreenAndroid(title: title, body: scaffoldBody),
    );
  }
}
