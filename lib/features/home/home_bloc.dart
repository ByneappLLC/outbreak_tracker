import 'dart:async';

import 'package:flutter/material.dart';
import 'package:outbreak_tracker/core/base_bloc.dart';

const int OVERVIEW = 0;
const int MAP = 1;
const int INFO = 2;
const int STATISTICS = 3;

class HomeBloc extends BaseBloc {
  StreamController<int> _pageController = StreamController<int>();
  Stream<int> get pageView => _pageController.stream;

  bool _isBottomBarHidden = false;
  double _prevOffset = 0;

  ScrollController mainScrollController = ScrollController();

  HomeBloc() {
    mainScrollController.addListener(() {
      if (mainScrollController.offset > _prevOffset) {
        _prevOffset = mainScrollController.offset;
        if (!_isBottomBarHidden) {
          _isBottomBarHidden = true;
          print('hide');
        }
      } else if (mainScrollController.offset < _prevOffset) {
        _prevOffset = mainScrollController.offset;
        if (_isBottomBarHidden) {
          _isBottomBarHidden = false;
          print('show');
        }
      } else if (mainScrollController.offset == 0) {
        if (_isBottomBarHidden) {
          _isBottomBarHidden = false;
          print('show');
        }
      }
    });
  }

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
