import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  final List<Color> _colors = [Colors.blue, Colors.red, Colors.yellow];
  @override
  Widget build(BuildContext context) {
    return PageTransitionSwitcher(
      transitionBuilder: (
        Widget child,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) {
        return FadeThroughTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        );
      },
      child: Container(),
    );
  }
}
