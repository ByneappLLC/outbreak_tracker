import 'package:flutter/material.dart';

class TopCountries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Color.fromRGBO(29, 32, 38, 1.0),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      height: 250,
    );
  }
}
