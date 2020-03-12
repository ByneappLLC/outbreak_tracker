import 'package:flutter/material.dart';
import 'package:outbreak_tracker/ui/root/main_body.dart';
import 'package:outbreak_tracker/ui/root/main_bottom_bar.dart';

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
    return Scaffold(
      body: MainBody(),
      bottomNavigationBar: MainBottomBar(),
    );
  }
}
