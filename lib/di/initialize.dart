import 'package:outbreak_tracker/di/blocs.dart';
import 'package:outbreak_tracker/di/singletons.dart';

initialize() async {
  await registerSingletons();
  registerBlocs();
}
