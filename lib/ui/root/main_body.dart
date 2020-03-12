import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:outbreak_tracker/core/base_bloc.dart';
import 'package:outbreak_tracker/features/home/home_bloc.dart';

class MainBody extends StatelessWidget {
  final List<Color> _colors = [Colors.blue, Colors.red, Colors.yellow, Colors.orange];
  @override
  Widget build(BuildContext context) {
    final _bloc = BlocProvider.of<HomeBloc>(context);
    return StreamBuilder<int>(
        stream: _bloc.pageView,
        initialData: 0,
        builder: (context, snapshot) {
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
            child: Container(
              key: ValueKey(snapshot.data),
              color: _colors[snapshot.data],
            ),
          );
        });
  }
}
