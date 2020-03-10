import 'package:covid19_app_fluter/di/di_instance.dart';
import 'package:covid19_app_fluter/features/on_launch/lancher_bloc.dart';

registerBlocs() {
  sl.registerFactory<LauncherBloc>(() => LauncherBloc());
}
