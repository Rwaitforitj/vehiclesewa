import 'package:flutter/material.dart';
import 'package:vsewa/baseview.dart';
import 'package:vsewa/screens/rating/rating_viewmodel.dart';

class RatingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<RatingViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: Text("Rating"),
          ),
        );
      },
    );
  }
}
