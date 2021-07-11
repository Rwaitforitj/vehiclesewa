import 'package:flutter/material.dart';
import 'package:vsewa/baseview.dart';
import 'package:vsewa/screens/profile/profile_viewmodel.dart';

class ProfileView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BaseView<ProfileViewModel>(builder: (context, model, child){return Scaffold(
          body: Center(
            child: Text("Profile"),
          ),);},);
  }
}