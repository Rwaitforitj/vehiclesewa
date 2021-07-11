import 'package:vsewa/baseviewmodel.dart';
import 'package:vsewa/constants/route_names.dart';

class SplashViewModel extends BaseViewModel {
  splashGen() async {
    await Future.delayed(Duration(milliseconds: 1500));
    goto(StartUpViewRoute);
  }
}
