import 'package:flutter/cupertino.dart';
import 'package:vsewa/baseviewmodel.dart';
import 'package:vsewa/screens/dashboard/dashboard_view.dart';
import 'package:vsewa/screens/earning/earning_view.dart';
import 'package:vsewa/screens/profile/profile_view.dart';
import 'package:vsewa/screens/rating/rating_view.dart';

class HomeViewModel extends BaseViewModel {
  int selectedIndex = 0;

  List<Widget> widgetOptions = [
    DashboardView(),
    EarningView(),
    RatingView(),
    ProfileView(),
  ];

  void onItemClicked(int index) {
    selectedIndex = index;
  }
}
