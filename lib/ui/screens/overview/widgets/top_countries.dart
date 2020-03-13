import 'package:flutter/material.dart';

class TopCountries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration:
          BoxDecoration(color: Color.fromRGBO(29, 32, 38, 1.0), boxShadow: [
        BoxShadow(
            color: Colors.white70.withOpacity(0.3),
            offset: Offset(1, 2),
            spreadRadius: 3,
            blurRadius: 10)
      ]),
      height: 250,
    );
  }
}
