import 'package:flutter/material.dart';
import 'package:outbreak_tracker/app/router.dart';
import 'package:outbreak_tracker/ui/screens/launcher/launcher_page.dart';

class OutbreakTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'OutbreakTracker',
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: LauncherPage.routeName,
    );
  }
}
