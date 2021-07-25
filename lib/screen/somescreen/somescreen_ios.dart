import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Icons;
import 'package:hina/main.dart' show AppState;

class SomeScreenIOS extends StatelessWidget {
  const SomeScreenIOS({required this.child, required this.title, Key? key})
      : super(key: key);
  final String title;
  final Widget child; //CupertinoPageScaffold's child

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
      child: child,
    );
  }
}
