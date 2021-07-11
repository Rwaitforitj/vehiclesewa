import 'package:flutter/material.dart';
import 'package:vsewa/baseview.dart';
import 'package:vsewa/screens/startup/startup_viewmodel.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<StartupViewModel>(
      builder: (context, model, child) {
        return Scaffold(
            backgroundColor: Colors.orangeAccent,
            body: Stack(
              children: [
                Container(
                  alignment: Alignment(0, 0.7),
                  child: RaisedButton.icon(
                    textColor: Colors.black,
                    color: Colors.white,
                    highlightColor: Colors.orangeAccent.withOpacity(0.13),
                    onPressed: () => model.onGetStartedPressed(),
                    icon: Icon(Icons.arrow_right, size: 30),
                    label: Text("Get started "),
                  ),
                ),
                Container(
                  alignment: Alignment(0, -2.5),
                  child: Image.asset(
                    'assets/1.png',
                  ),
                ),
                Container(
                  alignment: Alignment(0, 0.2),
                  child: Text(
                    'Driver App',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                )
              ],
            ));
      },
    );
  }
}
