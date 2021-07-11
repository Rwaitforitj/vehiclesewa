import 'package:vsewa/baseviewmodel.dart';
import 'package:vsewa/constants/route_names.dart';

class StartupViewModel extends BaseViewModel {
  onGetStartedPressed() {
    goto(LoginViewRoute);
  }
}
