import 'package:flutter/cupertino.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> pushNamed(String routeName, {dynamic params}) {
    return navigatorKey.currentState.pushNamed(routeName, arguments: params);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {dynamic params}) {
    return navigatorKey.currentState
        .pushReplacementNamed(routeName, arguments: params);
  }
}
