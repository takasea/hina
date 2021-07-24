import 'package:flutter/material.dart';
import 'utilities/selectuiplatform.dart';

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
    return SomeScreen(title: 'sample');
  }

  static const _store = GlobalObjectKey<AppState>('state');
  static AppState get draw {
    return _store.currentState!;
  }
}

class SomeScreen extends StatelessWidget {
  SomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
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
        ),
        floatingActionButton: GestureDetector(
          onTap: () {
            //You can call _store, but I don't want you to use it.
            // AppState._store!.currentState!.counter.value++;
            AppState.draw.counter.value++;
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class SomeWidget extends StatelessWidget {
  const SomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectUIPlatform(
      platformIOS:
          Container(width: 100, height: 100, color: Colors.lightBlueAccent),
      platformWeb: Container(width: 20, height: 20, color: Colors.red),
      defaultUI: Container(width: 20, height: 20, color: Colors.black),
    );
  }
}
