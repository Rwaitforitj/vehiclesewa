import 'package:flutter/material.dart';
import 'package:vsewa/baseview.dart';
import 'package:vsewa/screens/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(builder: (context, model, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Vehicle Sewa'),
          backgroundColor: Colors.orange,
          elevation: 4.0,
        ),
        body: model.widgetOptions[model.selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Account",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Ratings",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.money),
              label: "Earnings",
            ),
          ],
          unselectedItemColor: Colors.black54,
          selectedItemColor: Colors.orange,
          selectedLabelStyle: TextStyle(fontSize: 12.0),
          showUnselectedLabels: true,
          currentIndex: model.selectedIndex,
          onTap: model.onItemClicked,
        ),
      );
    });
  }
}
