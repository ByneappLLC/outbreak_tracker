import 'package:flutter/material.dart';

class BottomBarAnimator {
  final AnimationController mainController;
  final ScrollController scrollController;
  Animation<double> bottomBarAnimator;
  double _prevOffset = 0;

  BottomBarAnimator(this.mainController, this.scrollController)
      : bottomBarAnimator =
            Tween<double>(begin: 0, end: 100).animate(mainController) {
    scrollController.addListener(() {
      if (scrollController.offset > _prevOffset) {
        _prevOffset = scrollController.offset;
        _hide();
      } else {
        _prevOffset = scrollController.offset;
        _show();
      }
    });
  }

  _hide() {
    mainController.forward();
  }

  _show() {
    mainController.reverse();
  }
}
