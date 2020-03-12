import 'package:outbreak_tracker/di/di_instance.dart';
import 'package:outbreak_tracker/features/home/home_bloc.dart';
import 'package:outbreak_tracker/features/on_launch/lancher_bloc.dart';

registerBlocs() {
  sl.registerSingleton<HomeBloc>(HomeBloc());
  sl.registerFactory<LauncherBloc>(() => LauncherBloc(sl()));
}
