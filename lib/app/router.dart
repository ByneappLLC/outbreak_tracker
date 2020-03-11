import 'package:flutter/material.dart';
import 'package:outbreak_tracker/ui/root/root.dart';
import 'package:outbreak_tracker/ui/screens/launcher/launcher_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LauncherPage.routeName:
        return LauncherPage.newInstance();
      case RootWidget.routeName:
        return RootWidget.init();
      default:
        return MaterialPageRoute(
            builder: (_) => Container()); // TODO: some undefined screen
    }
  }
}
