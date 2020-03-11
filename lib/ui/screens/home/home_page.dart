import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'home';

  static PageRoute newInstance() {
    return MaterialPageRoute(builder: (_) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
