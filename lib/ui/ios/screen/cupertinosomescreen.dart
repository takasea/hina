import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Theme, Icons;
import '/main.dart' show AppState;
import 'cupertinosecondscreen.dart';
import '/ui/section/somewidget.dart';

class CupertinoSomeScreen extends StatelessWidget {
  const CupertinoSomeScreen({required this.title, Key? key}) : super(key: key);
  static const String name = '/';
  final String title;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(title),
        trailing: GestureDetector(
          onTap: () {
            //You can call _store, but I don't want you to use it.
            // AppState._store!.currentState!.counter.value++;
            AppState.draw.counter.value++;
          },
          child: const Icon(Icons.add),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              child: Text(
                'You have pushed the button this many times:',
              ),
              onTap: () {
                Navigator.pushNamed(context, CupertinoSecondScreen.name);
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
      ),
    );
  }
}
