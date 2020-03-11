import 'package:flutter/material.dart';
import 'package:outbreak_tracker/core/base_bloc.dart';
import 'package:outbreak_tracker/di/di_instance.dart';
import 'package:outbreak_tracker/features/on_launch/lancher_bloc.dart';

class LauncherPage extends StatelessWidget {
  static const String routeName = 'launcher';

  static PageRoute newInstance() {
    return MaterialPageRoute(
        builder: (_) =>
            BlocProvider(child: LauncherPage(), bloc: sl<LauncherBloc>()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
