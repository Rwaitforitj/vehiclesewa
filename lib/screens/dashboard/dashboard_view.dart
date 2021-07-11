import 'package:flutter/material.dart';
import 'package:vsewa/baseview.dart';
import 'package:vsewa/screens/dashboard/dashboard_viewmodel.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<DashboardViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: Text("Dashboard"),
          ),
        );
      },
    );
  }
}
