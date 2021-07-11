import 'package:vsewa/baseviewmodel.dart';
import 'package:vsewa/constants/route_names.dart';

class LoginViewModel extends BaseViewModel {
  onLoginPressed() {
    gotoAndClear(HomeViewRoute);
  }

  onRegisterPressed() {
    goto(RegisterViewRoute);
  }
}
