import 'package:flutter/material.dart';
import '/main.dart' show AppState;
import 'materialsecondscreen.dart';
import '/ui/section/somewidget.dart';

class MaterialSomeScreen extends StatelessWidget {
  MaterialSomeScreen({Key? key, required this.title}) : super(key: key);
  static const String name = '/';
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              child: Text(
                'You have pushed the button this many times:',
              ),
              onTap: () {
                Navigator.pushNamed(context, MaterialSecondScreen.name);
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
      floatingActionButton: GestureDetector(
        onTap: () {
          //You can call _store, but I don't want you to use it.
          // AppState._store!.currentState!.counter.value++;
          AppState.draw.counter.value++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
