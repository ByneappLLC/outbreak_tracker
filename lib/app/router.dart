import 'package:outbreak_tracker/ui/screens/home/home_page.dart';
import 'package:outbreak_tracker/ui/screens/launcher/launcher_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LauncherPage.routeName:
        return LauncherPage.newInstance();
      case HomePage.routeName:
        return HomePage.newInstance();
      default:
        return MaterialPageRoute(
            builder: (_) => Container()); // TODO: some undefined screen
    }
  }
}
