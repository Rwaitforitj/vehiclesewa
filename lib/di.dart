import 'package:get_it/get_it.dart';
import 'package:vsewa/screens/dashboard/dashboard_viewmodel.dart';
import 'package:vsewa/screens/earning/earning_viewmodel.dart';
import 'package:vsewa/screens/home/home_viewmodel.dart';
import 'package:vsewa/screens/login/login_viewmodel.dart';
import 'package:vsewa/screens/profile/profile_viewmodel.dart';
import 'package:vsewa/screens/rating/rating_viewmodel.dart';
import 'package:vsewa/screens/register/register_viewmodel.dart';
import 'package:vsewa/screens/splash/splash_viewmodel.dart';
import 'package:vsewa/screens/startup/startup_viewmodel.dart';
import 'package:vsewa/services/authentication_service.dart';
import 'package:vsewa/services/firestore_service.dart';
import 'package:vsewa/services/implementations/firestore_service_impl.dart';
import 'package:vsewa/services/implementations/navigation_service_impl.dart';
import 'package:vsewa/services/navigation_services.dart';

GetIt locator = GetIt.instance;

Future<void> setUpInjector() async {
  //Registering Services
  locator
      .registerLazySingleton<NavigationService>(() => NavigationServicesImpl());
  locator.registerLazySingleton<FirestoreService>(() => FireStoreServiceImpl());

  locator.registerLazySingleton(() => AuthenticationService());

  //Register ViewModel

  locator.registerFactory(() => ProfileViewModel());
  locator.registerFactory(() => RatingViewModel());
  locator.registerFactory(() => EarningViewModel());
  locator.registerFactory(() => DashboardViewModel());
  locator.registerFactory(() => HomeViewModel());
  locator.registerFactory(() => RegisterViewModel());
  locator.registerFactory(() => LoginViewModel());
  locator.registerFactory(() => StartupViewModel());
  locator.registerFactory(() => SplashViewModel());
}
