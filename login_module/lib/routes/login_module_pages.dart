import 'package:get/get.dart';
import 'package:login_module/screens/login_screen.dart';
import 'package:login_module/screens/otp_screen.dart';

part 'login_routes_path.dart';

class LoginModulePages {
  LoginModulePages._();

  static final pages = [
    GetPage(
      name: LoginRoutes.login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: LoginRoutes.otpPage,
      page: () => const OtpScreen(),
    ),
  ];
}
