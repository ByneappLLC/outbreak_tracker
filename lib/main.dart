import 'package:covid19_app_fluter/app/app.dart';
import 'package:covid19_app_fluter/di/initialize.dart' as di;
import 'package:flutter/material.dart';

void main() async {
  di.initialize();

  runApp(Covid19App());
}
