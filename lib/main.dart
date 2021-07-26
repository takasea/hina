import 'package:flutter/material.dart';

import 'utilities/selectuiplatform.dart';

import 'ui/material/materialappui.dart';
import 'ui/ios/cupertinoappui.dart';

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
    return SelectPlatformUI(
      platformIOS: CupertinoAppUI(),
      defaultUI: MaterialAppUI(),
    );
  }

  static const _store = GlobalObjectKey<AppState>('state');
  static AppState get draw {
    return _store.currentState!;
  }
}
