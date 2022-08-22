import 'package:get/get.dart';

class AppRoutes {
  getOffAllName({required String routes, dynamic arguments}) {
    Get.offAllNamed(routes, arguments: arguments);
  }

  getToName({required String routes, dynamic arguments}) {
    Get.toNamed(routes, arguments: arguments);
  }
}
