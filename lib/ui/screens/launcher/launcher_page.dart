import 'package:flutter/material.dart';

class LauncherPage extends StatelessWidget {
  static const String routeName = 'launcher';

  static PageRoute newInstance() {
    return MaterialPageRoute(builder: (_) => LauncherPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
