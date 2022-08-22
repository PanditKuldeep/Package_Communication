import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getx_demo/routes/app_pages.dart';
import 'package:getx_demo/routes/app_routes.dart';
import 'package:login_module/routes/navigation_streams_callback.dart';

class CallbackController extends GetxController {
  late NavigationStreams navigationStreams;
  late AppRoutes appRoutes;

  CallbackController() {
    navigationStreams = Get.find<NavigationStreams>();
    appRoutes = Get.find<AppRoutes>();

    navigationStreams.callbackStream?.stream.listen(
      (event) {
        appRoutes.getOffAllName(routes: Routes.landingPage, arguments: [event]);
      },
    ).onError((error) {
      if (kDebugMode) {
        print('error : $error');
      }
    });
  }
}
