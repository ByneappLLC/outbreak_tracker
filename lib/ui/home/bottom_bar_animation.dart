import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BottomBarAnimator {
  final AnimationController mainController;
  final ScrollController scrollController;
  Animation<double> bottomBarAnimator;

  bool _isBottomBarHidden = false;

  BottomBarAnimator(this.mainController, this.scrollController)
      : bottomBarAnimator = Tween<double>(begin: 0, end: 100).animate(
            CurvedAnimation(
                parent: mainController, curve: Curves.easeInOutBack)) {
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (_isBottomBarHidden) {
          _isBottomBarHidden = false;
          _show();
        }
      } else {
        if (!_isBottomBarHidden) {
          _isBottomBarHidden = true;
          _hide();
        }
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
