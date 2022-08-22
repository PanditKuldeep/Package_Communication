import 'package:get/get.dart';
import 'package:getx_demo/controllers/callback_controller.dart';
import 'package:getx_demo/routes/app_routes.dart';
import 'package:login_module/routes/navigation_streams_callback.dart';
import 'package:login_module/routes/login_routes.dart';

/// get app level dependencies*/
class AppDependencies {
  static Future<void> dependencies() async {
    Get.put(AppRoutes());
    Get.put(LoginModuleRoutes());
    Get.put(NavigationStreams());
    Get.put(CallbackController());
  }
}
