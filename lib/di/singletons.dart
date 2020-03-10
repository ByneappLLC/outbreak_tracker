import 'package:covid19_app_fluter/di/di_instance.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> registerSingletons() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();

  sl.registerSingleton<SharedPreferences>(preferences);
}
