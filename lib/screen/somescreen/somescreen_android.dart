import 'package:flutter/material.dart';
import 'package:hina/main.dart' show AppState;

class SomeScreenAndroid extends StatelessWidget {
  const SomeScreenAndroid({required this.title, required this.body, Key? key})
      : super(key: key);
  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
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
