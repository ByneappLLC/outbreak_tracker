import 'package:covid19_app_fluter/di/blocs.dart';
import 'package:covid19_app_fluter/di/singletons.dart';

initialize() async {
  await registerSingletons();
  registerBlocs();
}
