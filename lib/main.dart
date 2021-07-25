import 'package:flutter/material.dart';
import 'platformsetting.dart';
import 'screen/somescreen.dart';
import 'screen/secondscreen.dart';

void main() {
  // debugPrintBeginFrameBanner = true;
  // debugPrintRebuildDirtyWidgets = true;
  runApp(
    const App(
      key: GlobalObjectKey<AppState>('state'),
    ),
  );
}

class App extends StatefulWidget {
  const App({required key}) : super(key: key);
  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  final ValueNotifier<int> counter = ValueNotifier<int>(0);
  //other state

  @override
  void dispose() {
    counter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PlatformSetting(
      routes: {
        SomeScreen.name: (context) => SomeScreen(title: 'some screen'),
        SecondScreen.name: (context) => SecondScreen(),
      },
    );
  }

  static const _store = GlobalObjectKey<AppState>('state');
  static AppState get draw {
    return _store.currentState!;
  }
}
