import 'package:flutter/material.dart';
import 'package:outbreak_tracker/app/navigator.dart';
import 'package:outbreak_tracker/app/router.dart';
import 'package:outbreak_tracker/di/di_instance.dart';
import 'package:outbreak_tracker/ui/screens/launcher/launcher_page.dart';

class OutbreakTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Sen', brightness: Brightness.dark),
      title: 'OutbreakTracker',
      navigatorKey: sl<NavigationService>().navigatorKey,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: LauncherPage.routeName,
    );
  }
}
