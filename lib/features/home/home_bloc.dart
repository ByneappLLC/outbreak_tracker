import 'dart:async';

import 'package:outbreak_tracker/core/base_bloc.dart';

const int OVERVIEW = 0;
const int MAP = 1;
const int INFO = 2;
const int STATISTICS = 3;

class HomeBloc extends BaseBloc {
  StreamController<int> _pageController = StreamController<int>();
  Stream<int> get pageView => _pageController.stream;

  openOverView() {
    _pageController.add(OVERVIEW);
  }

  openMap() {
    _pageController.add(MAP);
  }

  openInfo() {
    _pageController.add(INFO);
  }

  openStatistics() {
    _pageController.add(STATISTICS);
  }

  @override
  void dispose() {
    _pageController.close();
  }
}
