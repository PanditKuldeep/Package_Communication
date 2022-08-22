import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_module/routes/login_module_pages.dart';
import 'package:login_module/routes/login_routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginModuleRoutes loginModuleRoutes;

  @override
  void initState() {
    super.initState();
    loginModuleRoutes = Get.find<LoginModuleRoutes>();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Login Screen'),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              loginModuleRoutes.getOffAllName(routes: LoginRoutes.otpPage);
            },
            child: const Text('Go to OTP Screen'),
          )
        ],
      ),
    );
  }
}
