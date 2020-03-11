import 'package:outbreak_tracker/app/navigator.dart';
import 'package:outbreak_tracker/core/base_bloc.dart';
import 'package:outbreak_tracker/ui/screens/home/home_page.dart';

class LauncherBloc extends BaseBloc {
  final NavigationService _navigationService;
  LauncherBloc(this._navigationService) {
    _onInit();
  }

  _onInit() {
    Future.delayed(Duration(milliseconds: 800), () {
      _navigationService.pushReplacementNamed(HomePage.routeName);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
