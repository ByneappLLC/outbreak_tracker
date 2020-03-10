import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';

  static PageRoute newInstance() {
    return MaterialPageRoute(builder: (_) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
