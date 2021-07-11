import 'package:flutter/material.dart';
import 'package:vsewa/baseview.dart';
import 'package:vsewa/screens/splash/splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
        onModelReady: (model) => model.splashGen(),
        builder: (context, model, child) {
          return Scaffold(
            body: Center(
              child: Container(
                height: 300,
                width: 300,
                child: Image.asset(
                  'assets/2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        });
  }
}
