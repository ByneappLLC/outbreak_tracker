import 'package:flutter/material.dart';
import 'package:outbreak_tracker/core/base_bloc.dart';
import 'package:outbreak_tracker/features/home/home_bloc.dart';
import 'package:outbreak_tracker/ui/screens/overview/widgets/global_situation.dart';
import 'package:outbreak_tracker/ui/screens/overview/widgets/stared_country.dart';
import 'package:outbreak_tracker/ui/screens/overview/widgets/top_countries.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _homeBloc = BlocProvider.of<HomeBloc>(context);
    return Container(
      color: Colors.black,
      child: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 38),
                child: SingleChildScrollView(
                  controller: _homeBloc.bottomBarAnimator.scrollController,
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: <Widget>[
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
            Container(
              color: Colors.black,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Hllo',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  //IconButton(icon: Icon(Icons.access_alarm), onPressed: null)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
