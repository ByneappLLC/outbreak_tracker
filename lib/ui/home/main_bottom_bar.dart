import 'package:flutter/material.dart';
import 'package:outbreak_tracker/core/base_bloc.dart';
import 'package:outbreak_tracker/features/home/home_bloc.dart';

class MainBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _bloc = BlocProvider.of<HomeBloc>(context);
    return AnimatedContainer(
      duration: Duration(milliseconds: 800),
      margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
      height: 70,
      decoration: BoxDecoration(
          color: Color.fromRGBO(29, 32, 38, 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: Colors.black54.withOpacity(0.3),
                spreadRadius: 5.0,
                blurRadius: 10.0,
                offset: Offset(2, 1))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.assessment), onPressed: _bloc.openOverView),
          IconButton(icon: Icon(Icons.map), onPressed: _bloc.openMap),
          IconButton(icon: Icon(Icons.info), onPressed: _bloc.openInfo),
          IconButton(
              icon: Icon(Icons.show_chart), onPressed: _bloc.openStatistics)
        ],
      ),
    );
  }
}
