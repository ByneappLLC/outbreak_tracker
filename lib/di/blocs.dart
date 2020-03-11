import 'package:outbreak_tracker/di/di_instance.dart';
import 'package:outbreak_tracker/features/on_launch/lancher_bloc.dart';

registerBlocs() {
  sl.registerFactory<LauncherBloc>(() => LauncherBloc(sl()));
}
