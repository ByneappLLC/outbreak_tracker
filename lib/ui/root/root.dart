import 'package:flutter/material.dart';

class RootWidget extends StatefulWidget {
  static const String routeName = '/';

  static PageRoute init() {
    return MaterialPageRoute(builder: (_) {
      return RootWidget();
    });
  }

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
