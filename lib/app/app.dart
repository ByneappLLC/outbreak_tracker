import 'package:covid19_app_fluter/app/router.dart';
import 'package:covid19_app_fluter/ui/screens/launcher/launcher_page.dart';
import 'package:flutter/material.dart';

class Covid19App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: '',
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: LauncherPage.routeName,
    );
  }
}
