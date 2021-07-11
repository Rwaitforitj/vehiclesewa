import 'package:flutter/material.dart';
import 'package:vsewa/baseview.dart';
import 'package:vsewa/screens/earning/earning_viewmodel.dart';

class EarningView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<EarningViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: Text("Earning"),
          ),
        );
      },
    );
  }
}
