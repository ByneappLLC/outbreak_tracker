import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:outbreak_tracker/core/base_bloc.dart';
import 'package:outbreak_tracker/features/home/home_bloc.dart';
import 'package:outbreak_tracker/ui/screens/overview/overview_page.dart';

class MainBody extends StatelessWidget {
  final List<Widget> _pages = [
    OverViewPage(
      key: ValueKey<String>('overview_page'),
    ),
    Container(
      color: Colors.orange,
    ),
    Container(),
    Container(),
  ];
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
            child: _pages[snapshot.data],
          );
        });
  }
}
