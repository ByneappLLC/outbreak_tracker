import 'dart:async';

import 'package:flutter/material.dart';
import 'package:outbreak_tracker/core/base_bloc.dart';
import 'package:outbreak_tracker/ui/home/bottom_bar_animation.dart';

const int OVERVIEW = 0;
const int MAP = 1;
const int INFO = 2;
const int STATISTICS = 3;

class HomeBloc extends BaseBloc {
  StreamController<int> _pageController = StreamController<int>();
  Stream<int> get pageView => _pageController.stream;

  BottomBarAnimator bottomBarAnimator;
  ScrollController scrollController;

  initAnimator(AnimationController controller) {
    if (scrollController == null) {
      scrollController = ScrollController();
    }
    if (bottomBarAnimator == null) {
      bottomBarAnimator = BottomBarAnimator(
        controller,
        scrollController,
      );
    }
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
