import 'package:flutter/material.dart';
import 'package:outbreak_tracker/ui/screens/overview/widgets/global_situation.dart';
import 'package:outbreak_tracker/ui/screens/overview/widgets/stared_country.dart';
import 'package:outbreak_tracker/ui/screens/overview/widgets/top_countries.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Hllo'),
                      //IconButton(icon: Icon(Icons.access_alarm), onPressed: null)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GlobalSituationCard(),
                SizedBox(
                  height: 20,
                ),
                StaredCountryCard(),
                SizedBox(
                  height: 20,
                ),
                TopCountries(),
                SizedBox(
                  height: 90,
                )
              ],
            ),
          )),
    );
  }
}