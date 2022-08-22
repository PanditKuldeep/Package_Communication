import 'package:get/get.dart';
import 'package:getx_demo/screens/landing_screen.dart';
import 'package:getx_demo/screens/splash_screen.dart';
import 'package:login_module/routes/login_module_pages.dart' as login_route;

part './routes_path.dart';

class AppPages {
  AppPages._();

  static final pages = [
    GetPage(
      name: Routes.splashPage,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Routes.landingPage,
      page: () => LandingScreen(),
    ),
    ...login_route.LoginModulePages.pages
  ];
}
