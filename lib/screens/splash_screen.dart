import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/routes/app_routes.dart';
import 'package:login_module/routes/login_module_pages.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late AppRoutes appRoutes;

  @override
  void initState() {
    super.initState();
    appRoutes = Get.find<AppRoutes>();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Splash Screen'),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              appRoutes.getOffAllName(routes: LoginRoutes.login);
            },
            child: const Text('Go to Login Screen'),
          )
        ],
      ),
    );
  }
}
