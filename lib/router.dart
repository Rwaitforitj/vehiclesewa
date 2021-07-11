import 'package:flutter/material.dart';
import 'package:vsewa/constants/route_names.dart';
import 'package:vsewa/screens/home/home_view.dart';
import 'package:vsewa/screens/login/login_view.dart';
import 'package:vsewa/screens/register/register_view.dart';
import 'package:vsewa/screens/startup/startup_view.dart';

Route<dynamic> generateRoute(
    RouteSettings settings, Map<String, Widget> routesAndViews) {
  switch (settings.name) {
    case LoginViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: LoginView(),
      );
    case RegisterViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: RegisterView(),
      );
    case HomeViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: HomeView(),
      );
    case StartUpViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: StartupView(),
      );
    case StartUpViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: StartupView(),
      );

    default:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: StartupView(),
      );
  }
}

PageRoute _getPageRoute({String routeName, Widget viewToShow}) {
  return MaterialPageRoute(
    settings: RouteSettings(
      name: routeName,
    ),
    builder: (_) => viewToShow,
  );
}
