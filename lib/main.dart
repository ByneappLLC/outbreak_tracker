import 'package:flutter/material.dart';
import 'package:outbreak_tracker/app/app.dart';
import 'package:outbreak_tracker/di/initialize.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initialize();

  runApp(OutbreakTrackerApp());
}
