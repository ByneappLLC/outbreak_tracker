import 'package:flutter/material.dart';

class MainBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          IconButton(icon: Icon(Icons.access_alarm), onPressed: () {}),
          IconButton(icon: Icon(Icons.access_alarm), onPressed: () {}),
          IconButton(icon: Icon(Icons.access_alarm), onPressed: () {}),
          IconButton(icon: Icon(Icons.access_alarm), onPressed: () {})
        ],
      ),
    );
  }
}
