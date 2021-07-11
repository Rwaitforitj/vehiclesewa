import 'package:flutter/material.dart';
import 'package:vsewa/baseview.dart';
import 'package:vsewa/screens/register/register_viewmodel.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<RegisterViewModel>(builder: (context, model, child) {
      return Scaffold(
        body: Center(
          child: Text("Register Page"),
        ),
      );
    });
  }
}
