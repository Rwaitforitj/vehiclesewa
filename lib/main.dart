import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vsewa/constants/route_names.dart';
import 'package:vsewa/di.dart';
import 'package:vsewa/router.dart';
import 'package:vsewa/screens/splash/splash_view.dart';
import 'package:vsewa/services/navigation_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpInjector();
  // Initialize Firebase
  await Firebase.initializeApp();
  runApp(VehicleSewaApp());
}

class VehicleSewaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vehicle Sewa App',
      debugShowCheckedModeBanner: false,
      navigatorKey: locator<NavigationService>().navigationKey,
      onGenerateRoute: (settings) => generateRoute(
        settings,
        routesAndViews(settings),
      ),
      home: SplashView(),
    );
  }
}
