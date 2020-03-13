import 'package:flutter/material.dart';
import 'package:outbreak_tracker/core/base_bloc.dart';
import 'package:outbreak_tracker/di/di_instance.dart';
import 'package:outbreak_tracker/features/home/home_bloc.dart';
import 'package:outbreak_tracker/ui/home/main_body.dart';
import 'package:outbreak_tracker/ui/home/main_bottom_bar.dart';

class RootWidget extends StatefulWidget {
  static const String routeName = '/';

  static PageRoute init() {
    return MaterialPageRoute(builder: (_) {
      return BlocProvider(child: RootWidget(), bloc: sl<HomeBloc>());
    });
  }

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: MainBody(),
      bottomNavigationBar: MainBottomBar(),
    );
  }
}
