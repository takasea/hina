import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart' show MaterialApp, ThemeData;
import 'package:flutter/cupertino.dart' show CupertinoApp, CupertinoThemeData;

class PlatformSetting extends StatelessWidget {
  PlatformSetting({
    required this.routes,
    this.theme,
    this.cupertinoThemeData,
    Key? key,
  }) : super(key: key);
  final Map<String, WidgetBuilder> routes;
  final ThemeData? theme;
  final CupertinoThemeData? cupertinoThemeData;

  @override
  Widget build(BuildContext context) {
    //TODO add my stack router
    //TODO decompose Material or Cupertino App
    if (kIsWeb) return MaterialApp(routes: routes, theme: theme);

    if (Platform.isAndroid) {
      return MaterialApp(routes: routes, theme: theme);
    }

    if (Platform.isIOS) {
      return CupertinoApp(routes: routes, theme: cupertinoThemeData);
    }

    //TODO add other platform settings

    return MaterialApp(routes: routes, theme: theme);
  }
}
