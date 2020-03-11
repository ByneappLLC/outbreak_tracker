import 'package:flutter/material.dart';
import 'package:outbreak_tracker/core/base_bloc.dart';
import 'package:outbreak_tracker/di/di_instance.dart';
import 'package:outbreak_tracker/features/on_launch/lancher_bloc.dart';

LauncherBloc _bloc;

class LauncherPage extends StatefulWidget {
  static const String routeName = 'launcher';

  static PageRoute newInstance() {
    if (_bloc == null) {
      _bloc = sl<LauncherBloc>();
    }
    return MaterialPageRoute(builder: (_) {
      return BlocProvider(child: LauncherPage(), bloc: _bloc);
    });
  }

  @override
  _LauncherPageState createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  void dispose() {
    _bloc = null;
    super.dispose();
  }
}
