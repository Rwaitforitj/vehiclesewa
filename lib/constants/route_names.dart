// Route Names are to be specified here...

import 'package:flutter/material.dart';
import 'package:vsewa/screens/dashboard/dashboard_view.dart';
import 'package:vsewa/screens/earning/earning_view.dart';
import 'package:vsewa/screens/home/home_view.dart';
import 'package:vsewa/screens/login/login_view.dart';
import 'package:vsewa/screens/profile/profile_view.dart';
import 'package:vsewa/screens/rating/rating_view.dart';
import 'package:vsewa/screens/register/register_view.dart';
import 'package:vsewa/screens/splash/splash_view.dart';
import 'package:vsewa/screens/startup/startup_view.dart';

const StartUpViewRoute = "StartUpViewRoute";
const LoginViewRoute = "LoginViewRoute";
const RegisterViewRoute = "RegisterViewRoute";
const HomeViewRoute = "HomeViewRoute";
const SplashViewRoute = "SplashViewRoute";
const DashboardViewRoute = "DashboardViewRoute";
const EarningViewRoute = "EarningViewRoute";
const ProfileViewRoute = "ProfileViewRoute";
const RatingViewRoute = "RatingViewRoute";

Map<String, Widget> routesAndViews(RouteSettings settings) => {
      StartUpViewRoute: StartupView(),
      LoginViewRoute: LoginView(),
      RegisterViewRoute: RegisterView(),
      HomeViewRoute: HomeView(),
      SplashViewRoute: SplashView(),
      DashboardViewRoute: DashboardView(),
      EarningViewRoute: EarningView(),
      ProfileViewRoute: ProfileView(),
      RatingViewRoute: RatingView(),
    };
