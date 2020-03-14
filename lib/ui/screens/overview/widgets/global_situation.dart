import 'package:flutter/material.dart';

class GlobalSituationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Color.fromRGBO(29, 32, 38, 1.0),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      //height: 250,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Global Situation',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            _Numbers()
          ],
        ),
      ),
    );
  }
}

class _Numbers extends StatelessWidget {
  _content(String count, String attr, Widget icon, String percentage) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              count,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(attr)
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: <Widget>[icon, Text(percentage)],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _content(
                '2',
                'Confirmed',
                Icon(
                  Icons.arrow_downward,
                  color: Colors.red,
                ),
                '20%'),
            _content(
                '1,056',
                'Death',
                Icon(
                  Icons.arrow_upward,
                  color: Colors.green,
                ),
                '20%'),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _content(
                '56',
                'Recovered',
                Icon(
                  Icons.arrow_downward,
                  color: Colors.red,
                ),
                '10%'),
            _content(
                '152',
                'New',
                Icon(
                  Icons.arrow_downward,
                  color: Colors.red,
                ),
                '30%'),
          ],
        ),
      ],
    );
  }
}
